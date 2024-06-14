#!/bin/bash

declare -a problems=("f1" "f2" "f3" "f4" "f5" "f6" "f7" "f8" "f9" "f10" "f11" "f12" "f13" "f14" "f15" "f16" "f17" "f18" "f19" "f20" "f21")
declare -a problems2=("f1" "f2" "f5" "f6" "f7" "f8" "f9" "f10" "f11")
declare -a problems3=("f4")
declare -a problems5=("f3" "f13" "f15" "f16" "f17" "f18" "f19" "f21")
declare -a problems6=("f14")
declare -a problems10=("f12" "f20")
declare -a noises=("original" "noise")
declare -a amounts=("50" "100" "500" "1000")
declare -a crossovers=("DEF" "RSC" "FVSC" "SAC" "SSC" "SCPS")
declare -a mutations=("") # "SM1-" "SM2-")
declare -a distances=("ABS" "COS")

pop_size=500

lower=0.00001
upper=0.01

for s in $(seq $1 $2);
do
    ####### Duas Variáveis #######
    grammar2=grammar_2_fp

    for problem in "${problems2[@]}"
    do
        echo  input/nicolau/fs/results/"$problem"

        for amount in "${amounts[@]}"
        do
            echo  input/nicolau/fs/results/"$problem"/"$amount"

            for noise in "${noises[@]}"
            do
                echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"

                d_index=0
                for distance in "${distances[@]}"
                do
                    echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"
                
                    c_index=1
                    for crossover in "${crossovers[@]}"
                    do
                        m_index=0
                        for mutation in "${mutations[@]}"
                        do
                            variation="$crossover"
                            echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"

                            echo $s input/nicolau/grammars/"$grammar2" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index
                            ./bin/Release/gpufjf $s input/nicolau/grammars/"$grammar2" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index
                            
                            let m_index=${m_index}+1
                        done
                        let c_index=${c_index}+1
                    done

                    let d_index=${d_index}+1
                done
            done
        done
    done

    ####### Duas Variáveis #######
    grammar3=grammar_3_fp

    for problem in "${problems3[@]}"
    do
        echo  input/nicolau/fs/results/"$problem"

        for amount in "${amounts[@]}"
        do
            echo  input/nicolau/fs/results/"$problem"/"$amount"

            for noise in "${noises[@]}"
            do
                echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"

                d_index=0
                for distance in "${distances[@]}"
                do
                    echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"
                
                    c_index=1
                    for crossover in "${crossovers[@]}"
                    do
                        m_index=0
                        for mutation in "${mutations[@]}"
                        do
                            variation="$crossover"
                            echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"

                            echo $s input/nicolau/grammars/"$grammar3" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index
                            ./bin/Release/gpufjf $s input/nicolau/grammars/"$grammar3" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index
                            
                            let m_index=${m_index}+1
                        done
                        let c_index=${c_index}+1
                    done

                    let d_index=${d_index}+1
                done
            done
        done
    done

    ####### Duas Variáveis #######
    grammar5=grammar_5_fp

    for problem in "${problems5[@]}"
    do
        echo  input/nicolau/fs/results/"$problem"

        for amount in "${amounts[@]}"
        do
            echo  input/nicolau/fs/results/"$problem"/"$amount"

            for noise in "${noises[@]}"
            do
                echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"

                d_index=0
                for distance in "${distances[@]}"
                do
                    echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"
                
                    c_index=1
                    for crossover in "${crossovers[@]}"
                    do
                        m_index=0
                        for mutation in "${mutations[@]}"
                        do
                            variation="$crossover"
                            echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"

                            echo $s input/nicolau/grammars/"$grammar5" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index
                            ./bin/Release/gpufjf $s input/nicolau/grammars/"$grammar5" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index
                            
                            let m_index=${m_index}+1
                        done
                        let c_index=${c_index}+1
                    done

                    let d_index=${d_index}+1
                done
            done
        done
    done

    ####### Duas Variáveis #######
    grammar6=grammar_6_fp

    for problem in "${problems6[@]}"
    do
        echo  input/nicolau/fs/results/"$problem"

        for amount in "${amounts[@]}"
        do
            echo  input/nicolau/fs/results/"$problem"/"$amount"

            for noise in "${noises[@]}"
            do
                echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"

                d_index=0
                for distance in "${distances[@]}"
                do
                    echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"
                
                    c_index=1
                    for crossover in "${crossovers[@]}"
                    do
                        m_index=0
                        for mutation in "${mutations[@]}"
                        do
                            variation="$crossover"
                            echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"

                            echo $s input/nicolau/grammars/"$grammar6" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index
                            ./bin/Release/gpufjf $s input/nicolau/grammars/"$grammar6" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index
                            
                            let m_index=${m_index}+1
                        done
                        let c_index=${c_index}+1
                    done

                    let d_index=${d_index}+1
                done
            done
        done
    done

    ####### Duas Variáveis #######
    grammar10=grammar_10_fp

    for problem in "${problems10[@]}"
    do
        echo  input/nicolau/fs/results/"$problem"

        for amount in "${amounts[@]}"
        do
            echo  input/nicolau/fs/results/"$problem"/"$amount"

            for noise in "${noises[@]}"
            do
                echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"

                d_index=0
                for distance in "${distances[@]}"
                do
                    echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"
                
                    c_index=1
                    for crossover in "${crossovers[@]}"
                    do
                        m_index=0
                        for mutation in "${mutations[@]}"
                        do
                            variation="$crossover"
                            echo  input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"

                            echo $s input/nicolau/grammars/"$grammar10" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index
                            ./bin/Release/gpufjf $s input/nicolau/grammars/"$grammar10" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index
                            
                            let m_index=${m_index}+1
                        done
                        let c_index=${c_index}+1
                    done

                    let d_index=${d_index}+1
                done
            done
        done
    done
done