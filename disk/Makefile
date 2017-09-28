DISKIMG=Diskexamples.dsk
RSDOS.BIN: rsdos.asm09
	lwasm -9bl -p cd -oRSDOS.BIN rsdos.asm09
	parse-coco-bin RSDOS.BIN
$(DISKIMG): RSDOS.BIN
	rm -f $(DISKIMG)
	imgtool create coco_jvc_rsdos Diskexamples.dsk
	imgtool put coco_jvc_rsdos Diskexamples.dsk RSDOS.BIN RSDOS.BIN
	decb copy -1ar HELLO.DAT Diskexamples.dsk,HELLO.DAT

debug: $(DISKIMG)
	mame coco2b -debug -flop1 $(DISKIMG) -autoboot_command "\n\n\n\n\nLOADM\"RSDOS\":EXEC\n"
run: $(DISKIMG)
	mame coco2b -flop1 $(DISKIMG) -autoboot_command "\n\n\n\n\nLOADM\"RSDOS\":EXEC\n"
clean:
	rm -f *.BIN $(DISKIMG)
	rm -fr history

