#! /bin/bash

# medium1
conda activate llama_factory
cd /home/student2020/srcao/LLaMA-Factory-main/

MODEL_TYPE='llama2-7b'
MODEL_PATH="/home/student2020/srcao/base-model/${MODEL_TYPE}"
RM_CHECKPOINT="rm_checpoint/${MODEL_TYPE}-lr=3e-4-warmup=200"
PPO_CHECKPOINT="ppo_checkpoint/${MODEL_TYPE}"


nohup deepspeed --include localhost:2,3 src/train_bash.py \
    --deepspeed /home/student2020/srcao/LLaMA-Factory-main/ds_config.json\
    --stage ppo \
    --do_train \
    --model_name_or_path ${MODEL_PATH} \
    --create_new_adapter \
    --dataset age_bias_rephase_question_train \
    --template default \
    --finetuning_type lora \
    --lora_target q_proj,v_proj \
    --reward_model ${RM_CHECKPOINT} \
    --using_reward_difference True \
    --coef_lambda 0.5 \
    --output_dir ${PPO_CHECKPOINT} \
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
    --fp16 \
    --report_to='wandb' &

# CUDA_VISIBLE_DEVICES=2 nohup python src/train_bash.py \
#     --stage ppo \
#     --do_train \
#     --model_name_or_path ${MODEL_PATH} \
#     --create_new_adapter \
#     --dataset age_bias_rephase_question_train \
#     --template default \
#     --finetuning_type lora \
#     --lora_target q_proj,v_proj \
#     --reward_model ${RM_CHECKPOINT} \
#     --using_reward_difference True \
#     --coef_lambda 0.5 \
#     --output_dir ${PPO_CHECKPOINT} \
#     --per_device_train_batch_size 2 \
#     --gradient_accumulation_steps 4 \
#     --lr_scheduler_type cosine \
#     --top_k 0 \
#     --top_p 0.9 \
#     --logging_steps 10 \
#     --save_steps 1000 \
#     --learning_rate 1e-5 \
#     --num_train_epochs 1.0 \
#     --plot_loss \
#     --fp16 \
#     --report_to='wandb' &