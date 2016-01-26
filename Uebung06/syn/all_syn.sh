#!/bin/bash

for i in RtlPar RtlSer
do
	PS_ARCH=$i design_vision -f syn_multipliers.tcl 
done
