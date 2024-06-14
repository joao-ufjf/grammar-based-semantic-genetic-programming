#!/bin/bash
rm -rf input/nicolau/fs/results
mkdir input/nicolau/fs/results

declare -a problems=("f1" "f2" "f3" "f4" "f5" "f6" "f7" "f8" "f9" "f10" "f11" "f12" "f13" "f14" "f15" "f16" "f17" "f18" "f19" "f20" "f21")
declare -a noises=("original" "noise")
declare -a amounts=("50" "100" "500" "1000")
declare -a crossovers=("DEF" "RSC" "FVSC" "SAC" "SSC" "SCPS")
declare -a mutations=("") # "SM1-" "SM2-")
declare -a distances=("ABS" "COS")

for problem in "${problems[@]}"
do
    echo  input/nicolau/fs/results/"$problem"
    mkdir input/nicolau/fs/results/"$problem"

    for amount in "${amounts[@]}"
    do
        echo  input/nicolau/fs/results/"$problem"/"$amount"
        mkdir input/nicolau/fs/results/"$problem"/"$amount"

        for noise in "${noises[@]}"
        do
            echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"
            mkdir input/nicolau/fs/results/"$problem"/"$amount"/"$noise"

            d_index=0
            for distance in "${distances[@]}"
            do
                echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"
                mkdir input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"
            
                c_index=0
                for crossover in "${crossovers[@]}"
                do
                    m_index=0
                    for mutation in "${mutations[@]}"
                    do
                
                        variation="$crossover"
                        echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"
                        mkdir input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"
                        echo 'seed;time;training;test;validation;model;constants' > input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/res.csv
                        
                        let m_index=${m_index}+1
                    done
                    let c_index=${c_index}+1
                done
            done
        done
    done
done