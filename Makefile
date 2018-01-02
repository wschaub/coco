TEST.BIN: hello.asm09 disk/rsdoslib.asm09
	lwasm -9bl -p cd -oTEST.BIN hello.asm09
	lwasm -P hello.asm09 >hello.lst
	parse-coco-bin TEST.BIN
Disk1.dsk: TEST.BIN
	rm -f Disk1.dsk
	imgtool create coco_jvc_rsdos Disk1.dsk
	imgtool put coco_jvc_rsdos Disk1.dsk TEST.BIN TEST.BIN
	decb copy -1ar hello.lst Disk1.dsk,SRC.DAT

debug: Disk1.dsk
	mame coco2b -debug -flop1 Disk1.dsk -autoboot_command "\n\n\n\n\nLOADM\"TEST\":EXEC\n"
run: Disk1.dsk
	mame coco2b -flop1 Disk1.dsk -autoboot_command "\n\n\n\n\nLOADM\"TEST\":EXEC\n"
clean:
	rm -f TEST.BIN Disk1.dsk
	rm -fr history

