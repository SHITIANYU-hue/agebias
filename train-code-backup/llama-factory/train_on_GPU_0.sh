#! /bin/bash
# medium5

conda activate llama-factory

cd /home/student2021/srcao/llama-factory

MODEL_TYPE='llama2'
MODEL_PATH="/home/student2021/srcao/base_LLM/${MODEL_TYPE}-7b"

CUDA_VISIBLE_DEVICES=0 nohup python src/train_bash.py \
--stage rm \
--do_train \
--model_name_or_path ${MODEL_PATH} \
--create_new_adapter  \
--dataset age_bias_for_train \
--val_size 0.05 \
--template default  \
--finetuning_type lora \
--lora_target 	q_proj,v_proj \
--output_dir  ./rm_checkpoint/${MODEL_TYPE} \
--per_device_train_batch_size 1 \
--gradient_accumulation_steps 4 \
--evaluation_strategy steps \
--lr_scheduler_type cosine  \
--logging_steps 10  \
--eval_steps 50 \
--save_steps 1000 \
--learning_rate 1e-6 \
--num_train_epochs 1.0 \
--plot_loss --fp16 --report_to='wandb' &

