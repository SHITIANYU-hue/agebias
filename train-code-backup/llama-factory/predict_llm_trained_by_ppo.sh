conda activate llama-factory

cd /home/student2021/srcao/llama-factory/

MODEL_TYPE='llama2'
MODEL_PATH="/home/student2021/srcao/base_LLM/${MODEL_TYPE}-7b"
CHECKPOINT_PATH="/home/student2021/srcao/llama-factory/ppo_checkpoint/llama2"
PREDICT_RES_PATH="/home/student2021/srcao/predict_result/${MODEL_TYPE}-7b-ppo-predict"

CUDA_VISIBLE_DEVICES=0 python src/train_bash.py \
    --stage sft \
    --do_predict \
    --model_name_or_path ${MODEL_PATH} \
    --adapter_name_or_path ${CHECKPOINT_PATH} \
    --dataset age_bias_for_train \
    --template default \
    --finetuning_type lora \
    --output_dir ${PREDICT_RES_PATH} \
    --per_device_eval_batch_size 1 \
    --max_samples 10 \
    --predict_with_generate \
    --fp16

