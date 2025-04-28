#!/bin/sh

emconfigure ./configure #maybe remove unneeded stuff
emmake make "CFLAGS=-pthread -s USE_PTHREADS=1" -j$(nproc)
