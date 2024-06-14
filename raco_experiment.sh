#!/bin/bash

echo 'seed;training;test;validation;model;constants' > output/rk4functions/$1/lotka-volterra/res.csv

for s in $(seq $2 $3);
	do
	echo 'Resolvendo lotka-volterra seed ' $s ' modo ' $1
	./bin/Release/gpufjf $s input/lotka-volterra/grammar input/lotka-volterra/data input/lotka-volterra/groups 0 output/rk4functions/$1/lotka-volterra/res.csv 8 $1 > output/rk4functions/$1/lotka-volterra/$s.txt
done