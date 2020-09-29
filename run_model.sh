#! bin/bash
N=1
OUTPUT_DIR=model
TRAIN_FILE=data/train.txt
VALID_FILE=data/valid.txt
CUDA_VISIBLE_DEVICES=$N 
python transformers/examples/language-modeling/run_language_modeling.py \
--output_dir=$OUTPUT_DIR \
--model_type=distilgpt2 \
--model_name_or_path=distilgpt2 \
--do_train \
--train_data_file=$TRAIN_FILE \
--do_eval \
--eval_data_file=$VALID_FILE \
--per_device_train_batch_size=1 \
--per_device_eval_batch_size=1 \
--evaluate_during_training \
--learning_rate 5e-5 \
--num_train_epochs=1 \
--overwrite_output_dir