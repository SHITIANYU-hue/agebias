#! /bin/bash

# medium5

conda activate llama_factory

cd /home/student2021/srcao/llama-factory/

MODEL_TYPE='llama2'
MODEL_PATH="/home/student2021/srcao/base_LLM/${MODEL_TYPE}-7b"
REWARD_MODEL_PATH="rm_checkpoint/${MODEL_TYPE}/"
OUTPUT_DIR="ppo_checkpoint/${MODEL_TYPE}"

nohup deepspeed --num_gpus 4 --master_port=9901 src/train_bash.py \
    --deepspeed /home/student2021/srcao/llama-factory/ds_config.json\
    --stage ppo \
    --do_train \
    --model_name_or_path ${MODEL_PATH} \
    --create_new_adapter \
    --dataset age_bias_for_train \
    --template default \
    --finetuning_type lora \
    --lora_target q_proj,v_proj \
    --reward_model  ${REWARD_MODEL_PATH}\
    --output_dir ${OUTPUT_DIR} \
    --per_device_train_batch_size 1 \
    --gradient_accumulation_steps 4 \
    --lr_scheduler_type cosine \
    --top_k 0 \
    --top_p 0.9 \
    --logging_steps 10 \
    --save_steps 1000 \
    --learning_rate 1e-5 \
    --num_train_epochs 1.0 \
    --plot_loss \
    --fp16 &