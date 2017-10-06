* loader.asm09
  This is a loader used for some of the auto-start SD-PAKs.
  Loading some binaries with loadm will wipe out any BASIC program stored. 
  autostart uses an AUTOEXEC.BAS so in order to autostart some games we load this
  simple loader first and then run it. This loader will make two ROM calls to BASIC:
  1) loadm "ROMPAK"
  2) exec

  This usually will make anything autoload because once control is transferred to our loader
  it doesn't matter if the basic program has been scribbled all over. 


* LOADER.BIN -- binary version of the above loader in loadm/cloadm format. 
