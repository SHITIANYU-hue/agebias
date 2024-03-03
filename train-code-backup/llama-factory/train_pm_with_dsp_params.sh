conda activate llama_factory

cd /home/student2021/srcao/LLaMA-Factory-main

MODEL_TYPE='llama2'
MODEL_PATH="/home/student2021/srcao/base_LLM/${MODEL_TYPE}-7b"


# CUDA_VISIBLE_DEVICES=1 nohup python src/train_bash.py \
nohup deepspeed --num_gpus 2 --master_port=9601 src/train_bash.py \
    --deepspeed /home/student2021/srcao/LLaMA-Factory-main/ds_config.json \
    --stage rm \
    --do_train \
    --model_name_or_path ${MODEL_PATH} \
    --create_new_adapter  \
    --dataset age_bias_for_train \
    --val_size 0.05 \
    --template default  \
    --finetuning_type lora \
    --lora_alpha 16 \
    --lora_dropout 0.05 \
    --lora_rank 8 \
    --lora_target q_proj,v_proj \
    --output_dir  ./rm_checkpoint/${MODEL_TYPE} \
    --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 1 \
    --gradient_accumulation_steps 8 \
    --evaluation_strategy steps \
    --lr_scheduler_type linear  \
    --max_length 1024 \
    --logging_steps 1  \
    --eval_steps 10 \
    --save_steps 1000 \
    --learning_rate 1e-6 \
    --warmup_steps 100 \
    --num_train_epochs 1.0 \
    --plot_loss --fp16 --report_to='wandb' &