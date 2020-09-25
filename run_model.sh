#! bin/bash
N=1
OUTPUT_DIR=/kaggle/working
TRAIN_FILE=/kaggle/working/train.txt
VALID_FILE=/kaggle/working/valid.txt
CUDA_VISIBLE_DEVICES=$N 
python /kaggle/input/transformers/transformers-master/examples/language-modeling/run_language_modeling.py \
--output_dir=$OUTPUT_DIR \
--model_type=gpt2 \
--model_name_or_path=$OUTPUT_DIR \
--do_train \
--train_data_file=$TRAIN_FILE \
--do_eval \
--eval_data_file=$VALID_FILE \
--per_device_train_batch_size=2 \
--per_device_eval_batch_size=2 \
--line_by_line \
--evaluate_during_training \
--learning_rate 5e-5 \
--num_train_epochs=5 \
--overwrite_output_dir