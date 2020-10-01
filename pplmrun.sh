#! bin/bash
CUDA_VISIBLE_DEVICES=1
export BOW=data/scifi.txt
export FILE_PATH=output/out.txt
if [ "$1" ]
then
 export BOW=$1
fi
if [ "$2" ]
then
    export FILE_PATH=$2
fi
python PPLM/run_pplm.py \
 --bag_of_words $BOW \
 --output_file $FILE_PATH \
 --pretrained_model distilgpt2 \
 --cond_text "In the beginning there were" \
 --num_samples 1 \
 --length 150 \
 --stepsize 0.03 \
 --num_iterations 1 \
 --window_length 10 \
 --gamma 1.5 \
 --gm_scale 0.80 \
 --kl_scale 0.04 \
 --colorama \
 --verbosity 'regular' \
 --sample