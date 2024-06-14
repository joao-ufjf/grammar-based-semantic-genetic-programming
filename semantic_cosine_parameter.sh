#!/bin/bash

declare -a problems=("f1" "f2" "f3" "f4" "f5" "f6" "f7" "f8" "f9" "f10" "f11" "f12" "f13" "f14" "f15" "f16" "f17" "f18" "f19" "f20" "f21")
declare -a problems2=("f1" "f2" "f5" "f6" "f7" "f8" "f9" "f10" "f11")
declare -a problems3=("f4")
declare -a problems5=("f3" "f13" "f15" "f16" "f17" "f18" "f19" "f21")
declare -a problems6=("f14")
declare -a problems10=("f12" "f20")
declare -a noises=("original" "noise")
declare -a amounts=("50" "100" "500" "1000")
declare -a crossovers=("SAC" "SSC")
declare -a mutations=("") # "SM1-" "SM2-")
declare -a distances=("COS")
declare -a lowers=("0.0" "0.01" "0.02" "0.04" "0.08")
declare -a uppers=("0.16" "0.32" "0.64" "1.0")

pop_size=50

for s in $(seq $1 $2);
do
    ####### Duas Variáveis #######
    grammar="grammar_2_fp"
    problems=$problems2

    for problem in "${problems[@]}"
    do
        echo  input/nicolau/fs/cosine/"$problem"

        for amount in "${amounts[@]}"
        do
            echo  input/nicolau/fs/cosine/"$problem"/"$amount"

            for noise in "${noises[@]}"
            do
                echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"

                d_index=1 ####### 1 para cosine
                for distance in "${distances[@]}"
                do
                    echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"
                
                    c_index=3
                    for crossover in "${crossovers[@]}"
                    do
                        m_index=0
                        for mutation in "${mutations[@]}"
                        do
                    
                            variation="$crossover"

                            echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"

                            l_index=0
                            for lower in "${lowers[@]}"
                            do
                                echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/"$lower"

                                u_index=0
                                for upper in "${uppers[@]}"
                                do  
                                    echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/"$lower"/"$upper"
                                    ./bin/Release/gpufjf $s input/nicolau/grammars/"$grammar" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/"$lower"/"$upper"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index

                                    let u_index=${u_index}+1
                                done

                                let l_index=${l_index}+1
                            done

                            let m_index=${m_index}+1
                        done
                        let c_index=${c_index}+1
                    done
                done
            done
        done
    done

    ####### 3 Variáveis #######
    grammar="grammar_3_fp"
    problems=$problems3

    for problem in "${problems[@]}"
    do
        echo  input/nicolau/fs/cosine/"$problem"

        for amount in "${amounts[@]}"
        do
            echo  input/nicolau/fs/cosine/"$problem"/"$amount"

            for noise in "${noises[@]}"
            do
                echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"

                d_index=1 ####### 1 para cosine
                for distance in "${distances[@]}"
                do
                    echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"
                
                    c_index=0
                    for crossover in "${crossovers[@]}"
                    do
                        m_index=0
                        for mutation in "${mutations[@]}"
                        do
                    
                            variation="$crossover"

                            echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"

                            l_index=0
                            for lower in "${lowers[@]}"
                            do
                                echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/"$lower"

                                u_index=0
                                for upper in "${uppers[@]}"
                                do  
                                    echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/"$lower"/"$upper"
                                    ./bin/Release/gpufjf $s input/nicolau/grammars/"$grammar" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/"$lower"/"$upper"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index

                                    let u_index=${u_index}+1
                                done

                                let l_index=${l_index}+1
                            done

                            let m_index=${m_index}+1
                        done
                        let c_index=${c_index}+1
                    done
                done
            done
        done
    done

    ####### 5 Variáveis #######
    grammar="grammar_5_fp"
    problems=$problems5

    for problem in "${problems[@]}"
    do
        echo  input/nicolau/fs/cosine/"$problem"

        for amount in "${amounts[@]}"
        do
            echo  input/nicolau/fs/cosine/"$problem"/"$amount"

            for noise in "${noises[@]}"
            do
                echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"

                d_index=1 ####### 1 para cosine
                for distance in "${distances[@]}"
                do
                    echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"
                
                    c_index=0
                    for crossover in "${crossovers[@]}"
                    do
                        m_index=0
                        for mutation in "${mutations[@]}"
                        do
                    
                            variation="$crossover"

                            echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"

                            l_index=0
                            for lower in "${lowers[@]}"
                            do
                                echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/"$lower"

                                u_index=0
                                for upper in "${uppers[@]}"
                                do  
                                    echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/"$lower"/"$upper"
                                    ./bin/Release/gpufjf $s input/nicolau/grammars/"$grammar" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/"$lower"/"$upper"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index

                                    let u_index=${u_index}+1
                                done

                                let l_index=${l_index}+1
                            done

                            let m_index=${m_index}+1
                        done
                        let c_index=${c_index}+1
                    done
                done
            done
        done
    done

    ####### 6 Variáveis #######
    grammar="grammar_6_fp"
    problems=$problems6

    for problem in "${problems[@]}"
    do
        echo  input/nicolau/fs/cosine/"$problem"

        for amount in "${amounts[@]}"
        do
            echo  input/nicolau/fs/cosine/"$problem"/"$amount"

            for noise in "${noises[@]}"
            do
                echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"

                d_index=1 ####### 1 para cosine
                for distance in "${distances[@]}"
                do
                    echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"
                
                    c_index=0
                    for crossover in "${crossovers[@]}"
                    do
                        m_index=0
                        for mutation in "${mutations[@]}"
                        do
                    
                            variation="$crossover"

                            echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"

                            l_index=0
                            for lower in "${lowers[@]}"
                            do
                                echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/"$lower"

                                u_index=0
                                for upper in "${uppers[@]}"
                                do  
                                    echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/"$lower"/"$upper"
                                    ./bin/Release/gpufjf $s input/nicolau/grammars/"$grammar" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/"$lower"/"$upper"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index

                                    let u_index=${u_index}+1
                                done

                                let l_index=${l_index}+1
                            done

                            let m_index=${m_index}+1
                        done
                        let c_index=${c_index}+1
                    done
                done
            done
        done
    done

    ####### 10 Variáveis #######
    grammar="grammar_10_fp"
    problems=$problems10

    for problem in "${problems[@]}"
    do
        echo  input/nicolau/fs/cosine/"$problem"

        for amount in "${amounts[@]}"
        do
            echo  input/nicolau/fs/cosine/"$problem"/"$amount"

            for noise in "${noises[@]}"
            do
                echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"

                d_index=1 ####### 1 para cosine
                for distance in "${distances[@]}"
                do
                    echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"
                
                    c_index=0
                    for crossover in "${crossovers[@]}"
                    do
                        m_index=0
                        for mutation in "${mutations[@]}"
                        do
                    
                            variation="$crossover"

                            echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"

                            l_index=0
                            for lower in "${lowers[@]}"
                            do
                                echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/"$lower"

                                u_index=0
                                for upper in "${uppers[@]}"
                                do  
                                    echo  input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/"$lower"/"$upper"
                                    # ./bin/Release/gpufjf $s input/nicolau/grammars/"$grammar" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/cosine/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/"$lower"/"$upper"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index

                                    let u_index=${u_index}+1
                                done

                                let l_index=${l_index}+1
                            done

                            let m_index=${m_index}+1
                        done
                        let c_index=${c_index}+1
                    done
                done
            done
        done
    done
done