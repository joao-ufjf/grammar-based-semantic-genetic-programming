#!/bin/bash

gramamr=$1
problem=$2
amount=$3
noise=$4
distance=$5
crossover=$6
pop_size=$7
c_index=$8
m_index=$9
lower=$10
upper=$11
d_index=$12

for s in $(seq $13 $14);
do
    echo                 $s input/nicolau/grammars/"$grammar" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index
    ./bin/Release/gpufjf $s input/nicolau/grammars/"$grammar" input/nicolau/fs/"$problem"/"$amount"/"$noise"/data input/nicolau/fs/groups/"$amount" 0 input/nicolau/fs/results/"$problem"/"$amount"/"$noise"/"$distance"/"$variation"/ 10 0 0 1 0 0 $pop_size $c_index $m_index $lower $upper $d_index
done