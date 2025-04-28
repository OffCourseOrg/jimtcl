#!/bin/sh
if [ ! -f "./Makefile" ] || [ "./configure" -nt "./Makefile" ]; then
  emconfigure ./configure #maybe remove unneeded stuff
else
  echo Do not reconfigure
fi

emmake make "CFLAGS=-pthread -s USE_PTHREADS=1" -j$(nproc)
