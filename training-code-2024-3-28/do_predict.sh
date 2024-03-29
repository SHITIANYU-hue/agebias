
# medium-1
cd /home/student2020/srcao/LLaMA-Factory-main

conda activate llama_factory

# MODEL_TYPE='qwen1.5-1.8b'
# MODEL_TYPE='gemma-2b'
# MODEL_TYPE='llama2-7b'

MODEL_TYPE='llama2-7b'
# DATASET="age_bias_rephase_question_test"
# DATASET="oaast_rm_zh"
DATASET='age_bias_rephase_question_test'

MODEL_PATH="/home/student2020/srcao/base-model/${MODEL_TYPE}"
RM_CHECKPOINT="rm_checpoint/${MODEL_TYPE}-lr=3e-4-warmup=200"
# PREDICT_RES_PATH="predict_res/origin-${MODEL_TYPE}-${DATASET}"
PREDICT_RES_PATH="predict_res/factory-PM-${MODEL_TYPE}-${DATASET}"



# --adapter_name_or_path ${RM_CHECKPOINT} \

CUDA_VISIBLE_DEVICES=2 nohup python src/train_bash.py \
    --stage sft \
    --do_predict \
    --model_name_or_path ${MODEL_PATH} \
    --dataset ${DATASET} \
    --template default \
    --adapter_name_or_path ${RM_CHECKPOINT} \
    --finetuning_type lora \
    --output_dir ${PREDICT_RES_PATH} \
    --per_device_eval_batch_size 1 \
    --max_samples 10 \
    --predict_with_generate \
    --fp16 &