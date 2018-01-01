This folder contains disk images containing the example programs from 
the audio tapes of the book Learning the 6809 by Dennis Bathory Kitsz.  

I'm slowly going through the book myself and will try to add more as I
go along. 

You can do the same by running sox LessonXX.mp3 -b16 -c1 -r44100 test.wav
and then opening in audacity, cutting out everything but the tape program
audio and then exporting to a lesonxx.wav file. 

You can then mount the .wav in MAME along with a disk image and 
use CLOAD and SAVE for BASIC programs or disk edtasm (included in edtasm.dsk)
and the LC and WD commands to load the assembler source from cassette
and save it to disk.

I have exported the assembler sources outside the dsk images
for people that would rather use lwasm instead of edtasm.
how I do that (using P8.ASM as an example):
decb copy lesson3.dsk,P8.ASM P8.ASM
mac2unix P8.ASM

NOTE: Some programs do not run well (crash) on a system with disk basic
I may try and fix them as I get time the following is a list of programs I know about so far:
 * Lesson 9 program 16 should be saved to and then run from tape with no disk controller connected to the system.
