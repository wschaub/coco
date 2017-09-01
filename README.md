# coco
Various projects for the Tandy Color computer. 

This repo contains various projects I'm working on for the Tandy Color Computer
to teach me about 6809 assembly and interfacing with real hardware. 

You should have lwasm, a recent version of mess and the mess tools on your system
in order to build the various files. 

The Makefile as it currently exists looks for test.asm09 as its source file
and the make run and make debug targets will cause the file to be assembled and 
a disk image to be built and then mess will be run and automatically load the file off of the disk image. 
In the case of the debug target the mess debugger is opened.

I'm currently just linking the file I want to build as test.asm09 and then running make but will
likely improve my very simple makefile in the future. 

the vim folder contains some files that are meant to go inside your .vim folder to give you 6809 
assembly syntax highlighting for all \*.asm09 files. 
The syntax file is not my own it is maintained by David Roper and was originally based on asm68k by Steve Wall.

The currently available projects are:
* hello.asm09 a hello world program that pretends its text is coming in on a modem. I plan to enhance this
  over time as I learn more about assembly language and the 6809/coco. 
