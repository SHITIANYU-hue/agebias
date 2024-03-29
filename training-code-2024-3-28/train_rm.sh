
# medium-1
cd /home/student2020/srcao/LLaMA-Factory-main

conda activate llama_factory

# MODEL_TYPE='qwen1.5-1.8b'
# MODEL_TYPE='gemma-2b'
MODEL_TYPE='llama2-7b'
# MODEL_TYPE='gemma-7b'
MODEL_PATH="/home/student2020/srcao/base-model/${MODEL_TYPE}"
RM_CHECKPOINT="rm_checpoint/${MODEL_TYPE}-instruct-shuffle"

nohup deepspeed --include localhost:2,3 src/train_bash.py \
    --stage rm \
    --do_train \
    --model_name_or_path ${MODEL_PATH} \
    --create_new_adapter \
    --dataset age_bias \
    --val_size 0.05 \
    --template default \
    --finetuning_type lora \
    --lora_alpha 16 \
    --lora_dropout 0.05 \
    --lora_rank 8 \
    --lora_target q_proj,v_proj \
    --output_dir ${RM_CHECKPOINT} \
    --evaluation_strategy steps \
    --per_device_eval_batch_size 1 \
    --per_device_train_batch_size 2 \
    --gradient_accumulation_steps 8 \
    --lr_scheduler_type linear \
    --warmup_steps 200 \
    --max_length 512 \
    --logging_steps 10 \
    --save_steps 1000 \
    --learning_rate 3e-4 \
    --num_train_epochs 1.0 \
    --plot_loss \
    --fp16 \
    --report_to='wandb'&