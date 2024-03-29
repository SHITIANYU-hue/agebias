#! /bin/bash


conda activate llama_factory

cd /home/student2020/srcao/LLaMA-Factory-main/

CUDA_VISIBLE_DEVICES=0 nohup python src/train_bash.py \
--stage rm \
--do_train \
--model_name_or_path /home/student2020/srcao/LLaMA-Factory-main/meta-llama/Llama-2-7b-hf/ \
--create_new_adapter  \
--dataset age_bias \
--template default  \
--finetuning_type lora \
--lora_target q_proj,v_proj \
--output_dir  ./rm_checkpoint/ \
--per_device_train_batch_size 2 \
--gradient_accumulation_steps 4 \
--lr_scheduler_type cosine  \
--logging_steps 10  \
--save_steps 1000 \
--learning_rate 1e-6 \
--num_train_epochs 1.0 \
--plot_loss --fp16 &

