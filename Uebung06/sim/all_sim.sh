#!/bin/bash

for i in RtlPar RtlSer
do
	for j in IF_SINE IF_RAND1 IF_RAND2 IF_CONST
	do
		echo PS_ARCH=$i PS_INPUT=$j vsim -c -do sim_power.tcl
		PS_ARCH=$i PS_INPUT=$j vsim -c -do sim_power.tcl
	done
done
