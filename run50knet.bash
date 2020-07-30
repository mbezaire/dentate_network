#!/bin/bash

sclerosisList="50"

scalingFactor=500
ngcell=500
nmcell=15
nbcell=5
nhcell=6
npp=1
randnet=0

   
mkdir ${ngcell}net

for i in $sclerosisList
do

echo $i
echo $i > parameters.dat
echo $scalingFactor >> parameters.dat
echo $ngcell >> parameters.dat
echo $nmcell >> parameters.dat
echo $nbcell >> parameters.dat
echo $nhcell >> parameters.dat
echo $npp >> parameters.dat
echo $randnet >> parameters.dat



#/home/jay/neuron/nrn/x86_64/bin/nrngui /home/rob/netCode/50knet.hoc
nrngui 50knet.hoc

mv numCons.dat ${ngcell}net/numCons.dat
mv spikerast.txt ${ngcell}net/spikerast.txt

done

