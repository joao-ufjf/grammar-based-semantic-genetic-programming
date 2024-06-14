#!/bin/bash
rm -rf input/nicolau/fs/parameter_test
mkdir input/nicolau/fs/parameter_test

declare -a problems=("f1" "f2" "f3" "f4" "f5" "f6" "f7" "f8" "f9" "f10" "f11" "f12" "f13" "f14" "f15" "f16" "f17" "f18" "f19" "f20" "f21")
declare -a problems2=("f1" "f2" "f5") # "f6" "f7" "f8" "f9" "f10" "f11")
declare -a problems3=("f4")
declare -a problems5=("f3" "f13" "f15" "f16" "f17" "f18" "f19" "f21")
declare -a problems6=("f14")
declare -a problems10=("f12" "f20")
declare -a noises=("original" "noise")
declare -a amounts=("50" "100" "500" "1000")
declare -a crossovers=("" "RSC-" "FVSC-" "SAC-" "SSC-" "SCPS-")
declare -a lowers=("0.00001" "0.0001" "0.001")
declare -a uppers=("0.01" "0.1" "1")

declare -a mutations=("") # "SM1-" "SM2-")

####### Duas Variáveis #######
grammar2=grammar_2_fp

for problem in "${problems[@]}"
do
    echo  input/nicolau/fs/parameter_test/"$problem"
    mkdir input/nicolau/fs/parameter_test/"$problem"

    for amount in "${amounts[@]}"
    do
        echo  input/nicolau/fs/parameter_test/"$problem"/"$amount"
        mkdir input/nicolau/fs/parameter_test/"$problem"/"$amount"

        for noise in "${noises[@]}"
        do
            echo  input/nicolau/fs/parameter_test/"$problem"/"$amount"/"$noise"
            mkdir input/nicolau/fs/parameter_test/"$problem"/"$amount"/"$noise"
            
            c_index=0
            for crossover in "${crossovers[@]}"
            do
                m_index=0
                for mutation in "${mutations[@]}"
                do
                    for lower in "${lowers[@]}"
                    do
                        for upper in "${uppers[@]}"
                        do
                            variation="$crossover"_"$lower"_"$upper"_"GGP"
                            echo  input/nicolau/fs/parameter_test/"$problem"/"$amount"/"$noise"/"$variation"
                            mkdir input/nicolau/fs/parameter_test/"$problem"/"$amount"/"$noise"/"$variation"
                            echo 'seed;time;training;test;validation;model;constants' > input/nicolau/fs/parameter_test/"$problem"/"$amount"/"$noise"/"$variation"/res.csv
                        done
                    done
                    let m_index=${m_index}+1
                done
                let c_index=${c_index}+1
            done
        done
    done
done