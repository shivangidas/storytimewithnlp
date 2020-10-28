#! bin/bash
K=50
N=1
OUTPUT_DIR=distilgpt2
CUDA_VISIBLE_DEVICES=$N 
python ../transformers/examples/text-generation/run_generation.py \
--model_type gpt2 \
--model_name_or_path $OUTPUT_DIR \
--length 300 \
--prompt "<BOS>" \
--stop_token "<EOS>" \
--k $K \
--num_return_sequences 5
