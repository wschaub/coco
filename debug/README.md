This directory contains various debug tools they are likely to be very unrefined.

* samstate.py
  simple python script to print the SAM chip state in human readable form.
  just run python -i samstate.py and then type in printstate(0xSAMSATEHERE) 
  you can get the state from the mame debugger memory window just look for sam state
  in the drop down. in coco1 and 2 it's by itself, in coco3 it's tracked as part of 
  the GIME state in MAME. (but still listed as sam state)
  
  For each active status bit of the SAM chip it's human readable abbreviation is printed out. 
  See page 17 of the MC6883 datasheet.
