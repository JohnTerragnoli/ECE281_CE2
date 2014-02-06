ECE281_CE2
==========

The purpose of this computer exercise was to create a decoder circuit using both structural and behavioral techniques.  

#**Structural Design**
This was done first.  It basically used parts defined in different .vhd files, like and3 and inverter, and reused them in a different .vhd file, namely the Decoder_Structural.vhd file.  This technique will save code in the long run when making large programs.  

The code for the Decoder_Structural file is here: https://raw.github.com/JohnTerragnoli/ECE281_CE2/master/Decoder_Structural.vhd 

The code for the inverter "template" is here: https://raw.github.com/JohnTerragnoli/ECE281_CE2/master/inverter.vhd

The code for the and3 "template" is here:  https://raw.github.com/JohnTerragnoli/ECE281_CE2/master/and3.vhd


#**Structural Design Results**
Then, this design was tested using every available possible input.  This code can be seen here:https://raw.github.com/JohnTerragnoli/ECE281_CE2/master/CE_Testbench_Structural.vhd

The graphical results for this structural design are here: 
![alt tag](https://raw.github.com/JohnTerragnoli/ECE281_CE2/master/Structural_Testbench_results.PNG "Structural Design Results")

#Analysis1:  
  This design was created by creating separate parts for individual components in the desired circuit. This way, the parts could be used over and over again.  All that is needed to be done was to redefine the inputs and outputs of the "shell" of the design of the components.  Based on the picture, it looks like the outputs for the Y's will only become active while the EN is at HIGH.  Once EN is HIGH, the inputs I0 and I1 decide which output Y0-Y3 to be on high.  Only one of the outputs can be on high at the same time.  

#**Behavioral Design**
After the structural design was made, the exact same thing was made using behavior logic.  Only one .vhd file was used, aside the file used to test the code.  This one file is here:  https://raw.github.com/JohnTerragnoli/ECE281_CE2/master/Decoder_behavioral.vhd

This design was then tested with this testbench: https://raw.github.com/JohnTerragnoli/ECE281_CE2/master/Decoder_behavioral_testbench.vhd

The graphical results can be seen here: ![alt tag](https://raw.github.com/JohnTerragnoli/ECE281_CE2/master/decoder_behavioral_testbench_snapchat.PNG "Behavioral Design Results")


#Analysis 2: 
It is self evident that this picture is the same as the results from the structural design test.  The pictures look the same!! This means that although one program used structural design and the other used behavioral, they still function the same.  This will come in handy later on when designs become more complicated.  Structural designs can be used to save and reuse in tight spots large amounts of code.  This is probably how computers are made!  

#**What was made:**
Obviously, the EN is the premission switch in the circuit.  signals will only pass from input to output if EN is HIGH.  Then, the inputs Io and I1 act as deciders for which of the outputs will be HIGH, making the rest of the LOW.  This is acting like a multiplexer of sorts, with an additional EN, or permission switch.  Think of it as a total power switch where if it is off, nothing else can be on in the output.  This is useful in the concept of computer memory, because we can use old code to make more complex code.  This way we don't have to keep reinventing the wheel and can make larger and more complex computer parts out of the ones that we already have.  


#**Documentation**
C3C Her recommended that I look over my code and ensure that I did not accidentally replace a 0 with a O.  He was right!! That's why my code wasn't compiling correctly.  
