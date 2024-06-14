#!/bin/bash
rm -rf input/nicolau/fs/results
mkdir input/nicolau/fs/results

rm -rf input/nicolau/fs/groups
mkdir input/nicolau/fs/groups

declare -a problems=("f1" "f2" "f3" "f4" "f5" "f6" "f7" "f8" "f9" "f10" "f11" "f12" "f13" "f14" "f15" "f16" "f17" "f18" "f19" "f20" "f21")
declare -a noises=("original" "noise")
declare -a amounts=("50" "100" "500" "1000")
declare -a crossovers=("" "SC1-" "SC2-")
declare -a mutations=("" "SM1-" "SM2-")

for problem in "${problems[@]}"
do
    echo  input/nicolau/fs/results/"$problem"
    mkdir input/nicolau/fs/results/"$problem"

    rm -rf input/nicolau/fs/"$problem"
    mkdir input/nicolau/fs/"$problem"

    for amount in "${amounts[@]}"
    do
        echo  input/nicolau/fs/results/"$problem"/"$amount"
        mkdir input/nicolau/fs/results/"$problem"/"$amount"
        mkdir input/nicolau/fs/"$problem"/"$amount"

        for noise in "${noises[@]}"
        do
            echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"
            mkdir input/nicolau/fs/results/"$problem"/"$amount"/"$noise"
            mkdir input/nicolau/fs/"$problem"/"$amount"/"$noise"

            for crossover in "${crossovers[@]}"
            do
                for mutation in "${mutations[@]}"
                do
                    variation="$crossover""$mutation""GGP"
                    echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$variation"
                    mkdir input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$variation"
                    echo 'seed;time;training;test;validation;model;constants' > input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$variation"/res.csv
                done
            done
        done
    done
done