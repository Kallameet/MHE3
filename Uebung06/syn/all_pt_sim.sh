#!/bin/bash

for i in RtlPar RtlSer
do
	for j in IF_SINE IF_RAND1 IF_RAND2 IF_CONST
	do
		PS_ARCH=$i PS_INPUT=$j primetime -f pt_sim.tcl
	done
done
