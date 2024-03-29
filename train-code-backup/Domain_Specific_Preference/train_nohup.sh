#! /bin/bash

conda activate dsp
cd /home/student2021/srcao/Domain_Specific_Preference


DATA_DIR="data"
TRAIN_DATA_LIST="${DATA_DIR}/age_bias_contain_score_train.json"
TEST_DATA_LIST="${DATA_DIR}/age_bias_contain_score_test.json"

MODEL_TYPE='llama2'
MODEL_PATH="/home/student2021/srcao/base_LLM/${MODEL_TYPE}-7b"

LM_COEFF=0.5

nohup torchrun --nproc_per_node=4 --master_port=6080 train.py \
    --do_train True --eval_at_start True\
    --lm_loss_coeff ${LM_COEFF} \
    --model_type ${MODEL_TYPE} \
    --model_name_or_path  ${MODEL_PATH} \
    --train_data_path ${TRAIN_DATA_LIST} \
    --eval_data_path ${TEST_DATA_LIST} \
    --remove_unused_columns false \
    --reward_domain general \
    --output_dir /home/student2021/srcao/Domain_Specific_Preference/age_unbiased_checkpoint/ \
    --num_train_epochs 1 \
    --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 1 \
    --gradient_accumulation_steps 8 \
    --evaluation_strategy steps \
    --padding_side right \
    --truncation_side left \
    --pooling_type max \
    --max_length 512 \
    --save_strategy steps \
    --learning_rate 1e-6 \
    --warmup_steps 100 \
    --logging_steps 1 \
    --eval_steps 10 \
    --save_steps 300 \
    --deepspeed configs/default_offload_opt_param.json \
    --tf32 false --fp16 True &