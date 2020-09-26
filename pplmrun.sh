#! bin/bash
CUDA_VISIBLE_DEVICES=1

python PPLM/run_pplm.py \
 --bag_of_words data/BoW.txt \
 --pretrained_model distilgpt2 \
 --cond_text "The novel begins at the start of time. Our robot" \
 --num_samples 1 \
 --length 50 \
 --stepsize 0.03 \
 --num_iterations 3 \
 --window_length 10 \
 --gamma 1.5 \
 --gm_scale 0.95 \
 --kl_scale 0.01 \
 --colorama \
 --verbosity 'regular' \
 --sample