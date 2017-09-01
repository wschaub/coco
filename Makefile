TEST.BIN: test.asm09
	lwasm -9bl -p cd -oTEST.BIN test.asm09
	parse-coco-bin TEST.BIN
Disk1.dsk: TEST.BIN
	rm -f Disk1.dsk
	imgtool create coco_jvc_rsdos Disk1.dsk
	imgtool put coco_jvc_rsdos Disk1.dsk TEST.BIN TEST.BIN

debug: Disk1.dsk
	mame coco2b -debug -flop1 Disk1.dsk -autoboot_command "\n\n\n\n\nLOADM\"TEST\":EXEC\n"
run: Disk1.dsk
	mame coco2b -flop1 Disk1.dsk -autoboot_command "\n\n\n\n\nLOADM\"TEST\":EXEC\n"
clean:
	rm -f TEST.BIN Disk1.dsk
	rm -fr history

