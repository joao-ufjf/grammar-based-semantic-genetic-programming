#!/bin/bash

declare -a problems2=("f1" "f2" "f5" "f6" "f7" "f8" "f9" "f10" "f11")
declare -a problems3=("f4")
declare -a problems5=("f3" "f13" "f15" "f16" "f17" "f18" "f19" "f21")
declare -a problems6=("f14")
declare -a problems10=("f12" "f20")
declare -a noises=("original" "noise")
declare -a amounts=("50" "100" "500" "1000")
declare -a crossovers=("" "SC1-" "SC2-")
declare -a mutations=("" "SM1-" "SM2-")

pop_size=500

grammar2=grammar_2_fp
grammar3=grammar_3_fp
grammar5=grammar_5_fp
grammar6=grammar_6_fp
grammar10=grammar_10_fp

for s in $(seq $1 $2);
do
    for problem in "${problems2[@]}"
    do
        echo input/nicolau/fs/results/"$problem"

        for amount in "${amounts[@]}"
        do
            echo input/nicolau/fs/results/"$problem"/"$amount"
            
            group=input/nicolau/fs/groups/"$amount"

            for noise in "${noises[@]}"
            do
                echo input/nicolau/fs/results/"$problem"/"$amount"/"$noise"

                data=input/nicolau/fs/"$problem"/"$amount"/"$noise"/data

                c_index=0
                for crossover in "${crossovers[@]}"
                do
                    m_index=0
                    for mutation in "${mutations[@]}"
                    do
                        variation="$crossover""$mutation""GGP"
                        echo input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$variation" "$v_index"

                        
                            ./bin/Release/gpufjf  $s input/nicolau/grammars/"$grammar2" $data $group 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index > garbage
                        
                        echo ""

                        let m_index=${m_index}+1
                    done

                    let c_index=${c_index}+1
                done
            done
        done
    done

    for problem in "${problems3[@]}"
    do
        echo input/nicolau/fs/results/"$problem"

        for amount in "${amounts[@]}"
        do
            echo input/nicolau/fs/results/"$problem"/"$amount"
            
            group=input/nicolau/fs/groups/"$amount"

            for noise in "${noises[@]}"
            do
                echo input/nicolau/fs/results/"$problem"/"$amount"/"$noise"

                data=input/nicolau/fs/"$problem"/"$amount"/"$noise"/data

                c_index=0
                for crossover in "${crossovers[@]}"
                do
                    m_index=0
                    for mutation in "${mutations[@]}"
                    do
                        variation="$crossover""$mutation""GGP"
                        echo input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$variation" "$v_index"

                        
                            ./bin/Release/gpufjf  $s input/nicolau/grammars/"$grammar3" $data $group 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index > garbage
                        
                        echo ""

                        let m_index=${m_index}+1
                    done

                    let c_index=${c_index}+1
                done
            done
        done
    done
    
    for problem in "${problems5[@]}"
    do
        echo input/nicolau/fs/results/"$problem"

        for amount in "${amounts[@]}"
        do
            echo input/nicolau/fs/results/"$problem"/"$amount"
            
            group=input/nicolau/fs/groups/"$amount"

            for noise in "${noises[@]}"
            do
                echo input/nicolau/fs/results/"$problem"/"$amount"/"$noise"

                data=input/nicolau/fs/"$problem"/"$amount"/"$noise"/data

                c_index=0
                for crossover in "${crossovers[@]}"
                do
                    m_index=0
                    for mutation in "${mutations[@]}"
                    do
                        variation="$crossover""$mutation""GGP"
                        echo input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$variation" "$v_index"

                        
                            ./bin/Release/gpufjf  $s input/nicolau/grammars/"$grammar5" $data $group 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index > garbage
                        
                        echo ""

                        let m_index=${m_index}+1
                    done

                    let c_index=${c_index}+1
                done
            done
        done
    done
    
    for problem in "${problems6[@]}"
    do
        echo input/nicolau/fs/results/"$problem"

        for amount in "${amounts[@]}"
        do
            echo input/nicolau/fs/results/"$problem"/"$amount"
            
            group=input/nicolau/fs/groups/"$amount"

            for noise in "${noises[@]}"
            do
                echo input/nicolau/fs/results/"$problem"/"$amount"/"$noise"

                data=input/nicolau/fs/"$problem"/"$amount"/"$noise"/data

                c_index=0
                for crossover in "${crossovers[@]}"
                do
                    m_index=0
                    for mutation in "${mutations[@]}"
                    do
                        variation="$crossover""$mutation""GGP"
                        echo input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$variation" "$v_index"

                        
                            ./bin/Release/gpufjf  $s input/nicolau/grammars/"$grammar6" $data $group 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index > garbage
                        
                        echo ""

                        let m_index=${m_index}+1
                    done

                    let c_index=${c_index}+1
                done
            done
        done
    done
    
    for problem in "${problems10[@]}"
    do
        echo input/nicolau/fs/results/"$problem"

        for amount in "${amounts[@]}"
        do
            echo input/nicolau/fs/results/"$problem"/"$amount"
            
            group=input/nicolau/fs/groups/"$amount"

            for noise in "${noises[@]}"
            do
                echo input/nicolau/fs/results/"$problem"/"$amount"/"$noise"

                data=input/nicolau/fs/"$problem"/"$amount"/"$noise"/data

                c_index=0
                for crossover in "${crossovers[@]}"
                do
                    m_index=0
                    for mutation in "${mutations[@]}"
                    do
                        variation="$crossover""$mutation""GGP"
                        echo input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$variation" "$v_index"

                        
                            ./bin/Release/gpufjf  $s input/nicolau/grammars/"$grammar10" $data $group 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index > garbage
                        
                        echo ""

                        let m_index=${m_index}+1
                    done

                    let c_index=${c_index}+1
                done
            done
        done
    done
done