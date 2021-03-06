/*VFO Program to run 2N2-40++ Transceiver - Press and hold enter on power up to start calibration
*swap pins XMIT_PWR and ENTER_BTN (D2 and D13)
*si5351 clock 0 is vfo frequency, clock 1 is bfo frequency, clock 2 is transmit frequency; clock 0 is 
*temporarily used for calibrating the 25 MHz si5351 clock during the clock calibration routine.
*This version uses a Nokia 5110 LCD display.  Calibration routines use the enter button to advance.
 */

#define NOKIA 0
#include <si5351mcu.h>
#include <Wire.h>
#include <Rotary.h>
#include <EEPROM.h>
#ifdef NOKIA
  #include <PCD8544.h>
#endif
#define ENTER_BTN     2
#define ENCODER_A     8       // Encoder pin A 
#define ENCODER_B     9       // Encoder pin B 
#define ENCODER_BTN   10      // Encoder pushbutton
#define DOWN_BTN      11
#define UP_BTN        12
#define XMIT_PWR      13

#define DIT_KEY       A0      //CW connector pin 1
#define DAH_KEY       A1      //CW connector pin 3
#define S_TONE        A2      //sidetone output square wave
//#define BACKLIGHT     A3
#define XMIT_EN       A3
#define VOLTS         A6

#define EE_SAVED_FQ     0   // spot to save tuned frequency 
#define EE_SAVED_CAL    4   // si5351 calibration value
#define EE_SAVED_BFO    8   // calibrated BFO frequency
#define EE_KEYER_SPEED  12  // spot to save keyer speed

//keyercontrol flags
#define     DIT_L      0x01     // Dit latch
#define     DAH_L      0x02     // Dah latch
#define     DIT_PROC   0x04     // Dit is being processed
#define     PDLSWAP    0x08     // 0 for normal, 1 for swap
#define     IAMBICB    0x10     // 0 for Iambic A, 1 for Iambic B

#define if_guess 4913925; //estimate of IF frequency center freq. - used for uncalibrated device
long if_freq=4913925; //initial if frequency, used for calculations

long cw_offset=600;
long fq=7030000; //initial startup frequency
long vfo;
long bfo;
long cal_ofst=0;
char LCDstr[14];   //Holds the displayed frequency
const float vpb=0.0048828;   //volts per bit of ADC 
float vbatt;

int step_array[6]={1, 10, 100, 500, 1000, 10000}; // step values in Hz
int step_index=3;                                 // initial step value 100Hz

unsigned long       ditTime;                    // No. milliseconds per dit
unsigned char       keyerControl;
unsigned char       keyerState;
enum KSTYPE {IDLE, CHK_DIT, CHK_DAH, KEYED_PREP, KEYED, INTER_ELEMENT };
byte wpm;

//Declare hardware being used
Si5351mcu Si;
Rotary r = Rotary(ENCODER_A, ENCODER_B);
PCD8544 lcd;

void set_frequency(short dir)
{
  fq=fq+(dir * step_array[step_index]);   //change freq by step size
  vfo=fq-if_freq;                         //calculate vfo frequency
  Si.setFreq(0, vfo);                     //call lib to set frequency
}

void calib(void)              //System calibration function, Si5351 clock and BFO
{
  long cal_fq = 10000000; 
  long cal_orig = cal_ofst;   //save existing cal value
  lcd.clear();
  lcd.setCursor(0,0);         //set cursor to column 0, row 1
  lcd.print("ADJ. CLK0 TO");
  lcd.setCursor(0,1);         //set cursor to row 2
  lcd.print("10MHz");  
  lcd.setCursor(0,2);         //set cursor to row 2
  lcd.print("CHG WITH ENC");  
  lcd.setCursor(0,3);         //set cursor to row 3
  lcd.print("ENTER TO CONT.");
  wait_key();                   //wait for "Enter" key press, then continue
  lcd.clear();
  disp_freq(cal_fq);
  disp_step(cal_fq);
  Si.disable(1);  //turn off bfo - not needed
  Si.setFreq(0, cal_fq);
  while ( digitalRead(ENTER_BTN) ) {      //enter_btn is "true" until pushed
 
    char result = r.process();
    if (result) {               //execute if encoder moved
      if (result == DIR_CW) {
        cal_fq = cal_fq + step_array[step_index];
        Si.setFreq(0, cal_fq);
        disp_freq(cal_fq);
      }
      else if (result == DIR_CCW) {
        cal_fq = cal_fq + (-1 * step_array[step_index]);
        Si.setFreq(0, cal_fq);
        disp_freq(cal_fq);
      }
    }
    check_step_change(cal_fq);    // check if step size buttons pressed
  }
 cal_ofst = 10000000 - cal_fq; //find difference from 10MHz reference
 cal_ofst *= 2.5;                //calculate 25MHz crystal offset value
 cal_ofst += cal_orig;           //factor back in original offset saved in eeprom
 disp_freq(cal_ofst);            //display ofset value
 delay(1000);
 wait_key();

 eeprom_write_dword((uint32_t *)EE_SAVED_CAL, cal_ofst); //save new cal in eeprom
 Si.correction(cal_ofst);       //set new calibration
 bfo=if_freq-cw_offset;         //calculate bfo frequency
 Si.setFreq(1, bfo);            //call lib to set bfo frequency
 Si.enable(1);                  //turn on bfo
 vfo=fq-if_freq;                    //calculate vfo frequency
 Si.setFreq(0, vfo);            //call lib to set vfo frequency 
 Si.enable(0);                  //turn on vfo 

//Si5351 calibration complete; Begin BFO calibration
 
  lcd.setCursor(0,0);         //set cursor to column 0, row 1
  lcd.print("ADJ. IF FREQ.");
  lcd.setCursor(0,1);         //set cursor to row 2
  lcd.print("MATCH IF FIL.");  
  lcd.setCursor(0,2);         //set cursor to row 3
  lcd.print("CENTER @ 600Hz");
  lcd.setCursor(0,3);         //set cursor to row 4
  lcd.print("USB");
  lcd.setCursor(0,4);         //set cursor to row 4
  lcd.print("ENTER TO CONT.");
  wait_key();                 //wait for ENTER_BTN key press then continue
  lcd.clear();                // clear screen and display if freq and step pointer
  disp_freq(if_freq);
  disp_step(if_freq);

  while ( digitalRead(ENTER_BTN) ) {
    char result = r.process();
    if (result) { //execute if encoder moved
      if (result == DIR_CW) {
        if_freq += step_array[step_index];
        bfo = if_freq - cw_offset;
        Si.setFreq(1, bfo);
        disp_freq(if_freq);
      }
      else if (result == DIR_CCW) {
        if_freq += (-1 * step_array[step_index]);
        bfo = if_freq - cw_offset;
        Si.setFreq(1, bfo);
        disp_freq(if_freq);
      }
      }
    check_step_change(if_freq);
  }
  wait_key();
  eeprom_write_dword((uint32_t *)EE_SAVED_BFO, if_freq); //save new if frequency cal in eeprom
}

void wait_key(void)
{
  while ( digitalRead(ENTER_BTN) ) {}
  delay(100);
  while ( !digitalRead(ENTER_BTN) ) {}
  delay(100);
}

void disp_freq(long freq)
{
  long fq_m=freq / 1000000;   // parse frequency to display into chunks
  long rm = freq % 1000000;
  long fq_k=rm / 1000;
  long fq_h = rm % 1000;
  sprintf(LCDstr, "%.1ld,%.3ld.%.3ld kHz", fq_m, fq_k, fq_h );  //create string with proper formatting
  lcd.setCursor(0, 0);        // set the cursor to column 5, line 0
  lcd.clearLine();            // clear old data from display
  lcd.print(LCDstr);
}

void check_step_change(long fq2)
{
    if ( !digitalRead(DOWN_BTN) )
    {
      step_index+=1;
      if (step_index > 5 ) 
      {
       step_index = 0;
      }
      disp_step(fq2);
      while ( !digitalRead(DOWN_BTN)) {} //debounce
      delay(100);
    }

    if ( !digitalRead(UP_BTN) )
    {
     step_index -=1;
     if (step_index < 0 ) 
    {
     step_index = 5;
    }
    disp_step(fq2);
      while ( !digitalRead(UP_BTN)) {} //debounce
      delay(100);
    }
}

void disp_step(long freq)
{
  int ofst = 0;
  ofst=step_index * (-1) + 8; // calculate offset for step indicator
  if (freq >= 10000000) ofst = ofst + 1;
  lcd.setCursor(0, 1);
  lcd.clearLine();
  lcd.setCursor(0, 1);
  ofst = ofst * 6;    // each ascii space on lcd is 6 lines wide
  lcd.setCursor(ofst, 1);
  lcd.print("^");         //Erase old caret, write a new caret
  lcd.setCursor(66,1);
  if (cw_offset > 0) lcd.print("USB");
  else lcd.print("LSB");
}

void setup(void) 
{
  Wire.begin();     //initialize wire functionality
  lcd.begin(84, 48);

  //read saved freq from eeprom. Reset value if it is uninitialized or unreasonable
  fq = eeprom_read_dword((const uint32_t *)EE_SAVED_FQ); 
  if (fq < 7000000 | fq > 7300000) {
    fq=7030000;
    eeprom_write_dword((uint32_t *)EE_SAVED_FQ, fq);
  }
  //read saved calibration offset from eeprom. Reset value if it is uninitialized or unreasonable.
  cal_ofst = eeprom_read_dword((const uint32_t *)EE_SAVED_CAL);  
  if (cal_ofst < -4096 | cal_ofst > 4096) {
    cal_ofst=0;
    eeprom_write_dword((uint32_t *)EE_SAVED_CAL, cal_ofst);
  }

  //eeprom_write_dword((uint32_t *)EE_SAVED_BFO, bfo);
   //read saved bfo calibration from eeprom. Reset value if it is uninitialized or unreasonable.
   if_freq = eeprom_read_dword((const uint32_t *)EE_SAVED_BFO);  
   if (if_freq < 4900000 | if_freq > 4920000) {
    if_freq = if_guess;
    eeprom_write_dword((uint32_t *)EE_SAVED_BFO, if_freq);
  }

    wpm = eeprom_read_dword((const uint32_t *)EE_KEYER_SPEED); //read saved keyer speed
    if (wpm < 5 | wpm > 35) {
      wpm = 13;                                                //set wpm to 13 if unreasonable
      eeprom_write_dword((uint32_t *)EE_KEYER_SPEED, wpm);
    }
  
    //setup input ports with internal pullup resistors enabled
    pinMode(ENCODER_A, INPUT_PULLUP);
    pinMode(ENCODER_B, INPUT_PULLUP);
    pinMode(ENCODER_BTN, INPUT_PULLUP);
    pinMode(DOWN_BTN, INPUT_PULLUP);
    pinMode(UP_BTN, INPUT_PULLUP);
    pinMode(ENTER_BTN, INPUT_PULLUP);
    pinMode(DIT_KEY, INPUT_PULLUP);
    pinMode(DAH_KEY, INPUT_PULLUP);
    //pinMode(BACKLIGHT, OUTPUT);

    pinMode(XMIT_PWR, OUTPUT);    //this output applies power to the finals for transmitting and shapes the CW wave
    pinMode(XMIT_EN, OUTPUT);     //gates CLK2 to finals
    digitalWrite(XMIT_PWR, 0);    //turn off power to finals
    digitalWrite(XMIT_EN, LOW);  //disable CLK2 drive to finals

    //digitalWrite(BACKLIGHT, LOW); //turn on backlight
 
  
    Si.init(25000000L);             //si5351 crystal freq 25MHz
    Si.correction(cal_ofst);        // correct si5351 crystal frequency - calculate for each new si5351 board

// Enable the desired outputs with some frequencies
    bfo = if_freq - cw_offset;      // calculate bfo freq
    Si.setFreq(1, bfo);             // CLK1 output bfo
    vfo=fq - if_freq;               // calculate vfo
    Si.setFreq(0, vfo);             // CLK0 output vfo

// set drive levels
    Si.setPower(0, SIOUT_4mA);
    Si.setPower(1, SIOUT_4mA);
    Si.setPower(2, SIOUT_8mA);

// enable the outputs
    Si.enable(0);
    Si.enable(1);
    Si.disable(2);                 //turn off xmit
    lcd.setCursor(18,1);            //set cursor to center text
    lcd.print("2N2-40++");
    delay(1000);

    keyerState = IDLE;
    keyerControl = IAMBICB;      // Or 0 for IAMBICA
    loadWPM(wpm);                 // set keyer speed
}

void update_PaddleLatch()
{
    if (digitalRead(DIT_KEY) == LOW) {
        keyerControl |= DIT_L;
    }
    if (digitalRead(DAH_KEY) == LOW) {
        keyerControl |= DAH_L;
    }
}

void loadWPM (int wpm)
{
    ditTime = 1200/wpm;
}

void check_menu(void)
{
  if (!digitalRead(ENCODER_BTN) ) {
    long menu_timer = millis();
    while (!digitalRead(ENCODER_BTN)) {}
    menu_timer = millis() - menu_timer;
    delay(100);
    if (menu_timer > 500) {       //encoder button pressed longer than 1/2 second
      lcd.clear();
      lcd.setCursor(0,0);         //set cursor to column 0, row 1
      lcd.print("Adj. Keyer spd");
      lcd.setCursor(0,1);
      lcd.print("with encoder");
      lcd.setCursor(0,2);
      lcd.clearLine();
      sprintf(LCDstr, "%2d", wpm);    //create string to print
      lcd.print(LCDstr);            //display wpm on line 3
      while (digitalRead(ENCODER_BTN)) {    //loop until encoder is pressed again
        char result = r.process();
        if (result) { //execute if encoder moved
          if (result == DIR_CW) {
            wpm +=1;
            if (wpm > 35) wpm = 35;
            lcd.setCursor(0,2);
            lcd.clearLine();
            sprintf(LCDstr, "%2d", wpm);    //create string to print
            lcd.print(LCDstr);            //display wpm on line 3
          }
          else if (result == DIR_CCW) {
            wpm -=1;
            if (wpm < 5) wpm = 5;
            lcd.setCursor(0,2);
            lcd.clearLine();
            sprintf(LCDstr, "%2d", wpm);    //create string to print
            lcd.print(LCDstr);            //display wpm on line 3
          }
        }
      }
      delay(100);     //encoder button pressed to exit menu. debounce
      lcd.clear();    // clear LCD and re-display frequency for operation
      disp_freq(fq); 
      disp_step(fq); 
      loadWPM(wpm);                 // set keyer speed
      //eeprom_write_dword((uint32_t *)EE_KEYER_SPEED, wpm); //save new speed in EEPROM
      EEPROM.update(EE_KEYER_SPEED, wpm); //save new speed in EEPROM
    }
    else {                          //press was less than 1/2 second
      //digitalWrite(BACKLIGHT, !digitalRead(BACKLIGHT)); //toggle backlight
      delay(100);
    }
  }
}

void check_sideband(void)
{
    if (!digitalRead(ENTER_BTN) ) {
    delay(100);
    while ( !digitalRead(ENTER_BTN) ) {}
    delay(100);
    cw_offset *= -1;  // flip sign of cw_offset
    disp_step(fq);    // display new sideband indicator
    bfo = if_freq - cw_offset;      // re-calculate bfo freq
    Si.setFreq(1, bfo);             // change bfo to new sideband
    }
}

void measure_volts(void)
{
  vbatt = 3 * analogRead(VOLTS) * vpb;
  lcd.setCursor(0,5);
  //lcd.clearLine();
  sprintf(LCDstr, "%d.%02dV", (int)vbatt, (int)(vbatt*100)%100);    //create string to print
  lcd.print(LCDstr);            //display battery voltage on line 6
}

void loop(void)                    //Main program loop
{
  if (!digitalRead(ENTER_BTN) ) {
    delay(100);
    while ( !digitalRead(ENTER_BTN) ) {}
    delay(100);
    calib();              //if enter button is pushed during startup, run calibration routine
  }

  static long ktimer;     // timer variable for keyer
  
  disp_freq(fq);          //display the startup frequency, 7,030.000 Hz
  disp_step(fq);          //display inital step indicator
  
  while (1){
      char result = r.process();
      if (result) { //execute if encoder moved
        if (result == DIR_CW) {
          set_frequency(1);
          disp_freq(fq);
        }
         else if (result == DIR_CCW) {
         set_frequency(-1);
         disp_freq(fq);
         }
      }
 
/*// transmit while key pressed                   //This code is locked out during receiver testing
      if ( !digitalRead(DIT_KEY) ) {
        tone(S_TONE,cw_offset);
        Si.disable(0); //turn off vfo
        Si.disable(1); //turn off bfo
        Si.setFreq(2, fq); //set transmit frequency
        Si.enable(2); //turn on xmit frequency
        digitalWrite(XMIT_PWR, 1); //turn on power to final amplifier
        while( !digitalRead(DIT_KEY)) {} //wait for unkey
        digitalWrite(XMIT_PWR, 0); //turn off power to final amplifier
        delay(20); //wait to turn off xmit to allow cw envelope to decay and avoid keyclicks

        noTone(S_TONE);
        Si.disable(2); //turn off xmit
        Si.setFreq(1, bfo); // recover bfo output
        Si.enable(0); //turn on vfo
        Si.enable(1); //turn on bfo
      } */
      
//keyer control section
switch (keyerState) {
    case IDLE:
        // Wait for direct or latched paddle press
        if ((digitalRead(DIT_KEY) == LOW) ||
                (digitalRead(DAH_KEY) == LOW) ||
                    (keyerControl & 0x03)) {
            update_PaddleLatch();
            keyerState = CHK_DIT;
        }
        break;
 
    case CHK_DIT:
        // See if the dit paddle was pressed
        if (keyerControl & DIT_L) {
            keyerControl |= DIT_PROC;
            ktimer = ditTime;
            keyerState = KEYED_PREP;
        }
        else {
            keyerState = CHK_DAH;
        }
        break;
 
    case CHK_DAH:
        // See if dah paddle was pressed
        if (keyerControl & DAH_L) {
            ktimer = ditTime*3;
            keyerState = KEYED_PREP;
        }
        else {
            keyerState = IDLE;
        }
        break;
 
    case KEYED_PREP:
        // Assert key down, start timing, state shared for dit or dah
        tone( S_TONE, abs(cw_offset) );
        Si.disable(0); //turn off vfo
        Si.disable(1); //turn off bfo
        Si.setFreq(2, fq); //set transmit frequency
        Si.enable(2); //turn on xmit frequency
        digitalWrite(XMIT_EN, HIGH);  //enable CLK2 drive to finals
        digitalWrite(XMIT_PWR, HIGH); //turn on power to final amplifier and arduino L LED
        ktimer += millis();                 // set ktimer to interval end time
        keyerControl &= ~(DIT_L + DAH_L);   // clear both paddle latch bits
        keyerState = KEYED;                 // next state
        break;
 
    case KEYED:
        // Wait for timer to expire
        if (millis() > ktimer) {            // are we at end of key down ?
            digitalWrite(XMIT_PWR, LOW); //turn off power to final amplifier and LED
            delay(20); //wait to turn off xmit to allow cw envelope to decay and avoid keyclicks
            noTone(S_TONE);  //turn off sidetone
            digitalWrite(XMIT_EN, LOW);  //disable CLK2 drive to finals
            Si.disable(2); //turn off xmit
            Si.setFreq(1, bfo); // recover bfo output
            Si.enable(0); //turn on vfo
            Si.enable(1); //turn on bfo
            ktimer = millis() + ditTime;    // inter-element time
            keyerState = INTER_ELEMENT;     // next state
        }
        else if (keyerControl & IAMBICB) {
            update_PaddleLatch();           // early paddle latch in Iambic B mode
        }
        break;
 
    case INTER_ELEMENT:
        // Insert time between dits/dahs
        update_PaddleLatch();               // latch paddle state
        if (millis() > ktimer) {            // are we at end of inter-space ?
            if (keyerControl & DIT_PROC) {             // was it a dit or dah ?
                keyerControl &= ~(DIT_L + DIT_PROC);   // clear two bits
                keyerState = CHK_DAH;                  // dit done, check for dah
            }
            else {
                keyerControl &= ~(DAH_L);              // clear dah latch
                keyerState = IDLE;                     // go idle
            }
        }
        break;
    }

    check_step_change(fq);

    check_menu();

    check_sideband();

    measure_volts();
      
  }

}
