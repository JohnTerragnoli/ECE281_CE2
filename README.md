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


#**Behavioral Design**
After the structural design was made, the exact same thing was made using behavior logic.  Only one .vhd file was used, aside the file used to test the code.  This one file is here:  https://raw.github.com/JohnTerragnoli/ECE281_CE2/master/Decoder_behavioral.vhd

This design was then tested with this testbench: https://raw.github.com/JohnTerragnoli/ECE281_CE2/master/Decoder_behavioral_testbench.vhd

The graphical results can be seen here: ![alt tag](https://raw.github.com/JohnTerragnoli/ECE281_CE2/master/decoder_behavioral_testbench_snapchat.PNG "Behavioral Design Results")

It is self evident that this picture is the same as the results from the structural design test.  
