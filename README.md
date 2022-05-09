# 2N2-40-plusplus
This is very much an "alpha" level project. Proceed only if you want to get your hands dirty :)
Arduino software for the KU4QO version of K8IQY's 2n2-40 transceiver 
This is a work-in-progress. 
*VFO Program to run 2N2-40++ digital Transceiver - Press and hold enter on power up to start calibration
*swap pins XMIT_PWR and ENTER_BTN (D2 and D13) on digital board!
*si5351 clock 0 is vfo frequency, clock 1 is bfo frequency, clock 2 is transmit frequency; clock 0 is 
*temporarily used for calibrating the 25 MHz si5351 clock during the clock calibration routine.
*This version uses a Nokia 5110 LCD display.  Calibration routines use the enter button to advance.
*
Additional construction notes follow for these "alpha" version boards. See files "digital board mods" for additional details.

Attached is a photo of the digital board. There are a bunch of changes needed, so I figured a picture would help to follow along as well. Also attached are schematics of the boards as they were manufactured, along with lots of chicken-scratch writing about mods and values that were changed. You can see that the analog board is pretty much correct as-is, apart from a missing cap and a few value changes.

If you look at the two boards you'll see that the signals that travel between them have connectors in the exact same place. 

BFO
LO
Tone
Xmit
Power out digital/power in analog

The idea was to just have push-pin type connectors so that you could make the "sandwich" and easily pull it apart for changes or repairs. That didn't work out well for me so I used twisted-pair wires to connect between them. I don't notice any adverse results doing it that way. I'm sure it would work great with high-quality connectors, but the garbage ebay connectors I used were extremely noisy.

For the analog board, you need to add a 0.1uF cap across R11. Just tack solder it across the resistor or the pads. 

The winding information for all the inductors and transformers is printed on the schematic. The spots that have hand-written lengths in inches is me noting how much wire was needed to wind the coil. I used #28 wire. 

Transformer T6 is a little tricky since it has three windings. The sense of the windings is important. If you mix them up you'll make a very nice oscillator :)  The numbers start with odd, then end with even. So the first winding is 1 turn, starting at pin 1 and ending at pin 2. The next winding is 4 turns and starts at pin 3, goes in the same direction as the first winding, and ends at pin 4. Winding 3 starts at pin 5, goes in the same direction as the other two windings, and ends at pin 6. The pins are labeled on the pcb for clarity. 

Ground the IF crystal cases with a short wire to the spots labeled J10 through J13.

The audio output transformer has a P printed on one side. That is the primary (driven by the 2n2222 transistors). The unprinted side is the secondary (drives the speaker). 

Put a ferrite bead on the collector of Q4 before you solder it (for stability). 

The digital board requires a bunch of mods to get right. Here are my notes:

The schematic symbol for U4 says 74HC00, but it is important to use a 74ACT00. 

Be careful, there seem to be two different types of displays that have the Nokia display mounted on them. You can see the pins labeled in the photo attached. Make sure you buy and use a display that has the identical pinout. If you get one with the wrong pinout, it won't work as-is. 

On the 2 pin connector called "backlight", if you connect those pins the Nokia display backlight will turn on. Disconnect and it turns off. I was going to add computer control for this but ran out of output pins on the Arduino. So, on my board you'll see a transistor mounted in that spot. Ignore that and just add a jumper or a switch, or if you want the backlight on all the time, just short those two pins.

Add two resistors, 10k and 20k, as feedback to the Arduino for the supply voltage display. These don't have a position, so just solder them to the top of the board. You'll see that I used two red-colored resistors here. They are 0.1% resistors, but using regular 1% resistors is fine. If you don't have a 20k, use two 10k in series. 

There are two control lines that need to be swapped, which requires cutting traces and running mod wires. The Arudino nano has an LED that is attached to D13. If you use D13 as an input you have to remove that LED or the input doesn't work. Instead, I swapped what was connected to D2 with D13. You can see the two white mod wires that wrap around the bottom left corner of the arduino. The ends of those wires attach to the two trace cuts. One cut is by D100, and the other is by C8. 

You need to add a 10k resistor to ground from the XMIT_PWR line, which is now connect to Arudino pin D13 (after the mod above). This keeps the power off off of the finals during restart.

Before you install U4 (74ACT00), bend up pins 11, 12 and 13. Also, before you install it, cut the trace between pins 9 and 10. Do not load C7. Instead, use those pads as connection points for the mod wires. We're turning gate U4C from an inverter into a NAND gate, and using the spare U4D as an inverter. Pin 9 is then connected to Arduino pin A3. This allows us to gate the transmitter clock properly to keep the finals turned off during receive. 

For R19, use 100k instead of 10k. Use the 500 pot I sent as RV1. You'll have to be a little creative to solder in the pot since it doesn't match the pads. I bent the pins and used it vertically, and added a wire to the wiper connection down to the board. Also keep in mind that the pot is backwards, so fully clockwise is the lowest sidetone level, and it increases as you turn CCW. You won't need much since the audio amp is so sensitive, so start fully CW, then tweak carefully until you get the sidetone level you want. 

Both U4A and U4B drive attenuators before the signals go down to the mixers on the analog board. Use the resistor values in red for both of those attenuators. 

I'd suggest building the digital board first and getting it all working properly before you continue to the analog section. That way, you can check the outputs and make sure everything looks good before you build the analog board. You can test the display, swithces, Si5351 and keyer functions first before continuing. 

Just like all the other radios that use a class E amplifier for the finals (i.e. QCX), they are sensitive to being operated into an open or short circuit. When you first turn on the analog board, make sure you have a dummy load connected to the antenna, just in case something weird is happening and it tries to transmit. BS170 aren't expensive, but you don't want to smoke them if you can avoid it.

Notice that +12V power is first applied to the digital board, then routed down to the analog board. Each board has a schottky diode to protect it from reverse polarity. The two boards together draw about 140mA from my benchtop supply with no input signal. Yours should be close to that. If not, something is probably wrong.

Mine puts out a bit over 4 watts at 12VDC, and the amplifier is amazingly efficient. The entire radio only draws around 500mA when transmitting. 

Ok, I think that covers it. Take a look at the schematic and let me know if there are any parts that you don't have. If I have them I'll toss them in the box before I ship it on monday. 
