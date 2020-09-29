#! bin/bash
CUDA_VISIBLE_DEVICES=1
export BOW=data/scifi.txt
if [ "$1" ]
then
 export BOW=$1
fi
python PPLM/run_pplm.py \
 --bag_of_words $BOW \
 --pretrained_model distilgpt2 \
 --cond_text "The story begins at the dawn of the new world." \
 --num_samples 1 \
 --length 50 \
 --stepsize 0.03 \
 --num_iterations 3 \
 --window_length 10 \
 --gamma 1.5 \
 --gm_scale 0.90 \
 --kl_scale 0.03 \
 --colorama \
 --verbosity 'regular' \
 --sample