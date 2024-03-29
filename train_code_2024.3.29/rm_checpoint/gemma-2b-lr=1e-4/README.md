---
license: other
library_name: peft
tags:
- llama-factory
- lora
- generated_from_trainer
base_model: /home/student2020/srcao/base-model/gemma-2b
metrics:
- accuracy
model-index:
- name: gemma-2b
  results: []
---

<!-- This model card has been generated automatically according to the information the Trainer had access to. You
should probably proofread and complete it, then remove this comment. -->

# gemma-2b

This model is a fine-tuned version of [/home/student2020/srcao/base-model/gemma-2b](https://huggingface.co//home/student2020/srcao/base-model/gemma-2b) on the age_bias dataset.
It achieves the following results on the evaluation set:
- Loss: 0.6181
- Accuracy: 0.6036

## Model description

More information needed

## Intended uses & limitations

More information needed

## Training and evaluation data

More information needed

## Training procedure

### Training hyperparameters

The following hyperparameters were used during training:
- learning_rate: 0.0001
- train_batch_size: 1
- eval_batch_size: 1
- seed: 42
- distributed_type: multi-GPU
- num_devices: 4
- gradient_accumulation_steps: 8
- total_train_batch_size: 32
- total_eval_batch_size: 4
- optimizer: Adam with betas=(0.9,0.999) and epsilon=1e-08
- lr_scheduler_type: linear
- lr_scheduler_warmup_steps: 100
- num_epochs: 1.0
- mixed_precision_training: Native AMP

### Training results

| Training Loss | Epoch | Step | Validation Loss | Accuracy |
|:-------------:|:-----:|:----:|:---------------:|:--------:|
| 0.8002        | 0.04  | 10   | 0.7744          | 0.5558   |
| 0.8166        | 0.08  | 20   | 0.7694          | 0.5535   |
| 0.8086        | 0.12  | 30   | 0.7612          | 0.5513   |
| 0.8243        | 0.15  | 40   | 0.7557          | 0.5513   |
| 0.7482        | 0.19  | 50   | 0.7392          | 0.5604   |
| 0.7545        | 0.23  | 60   | 0.7133          | 0.5695   |
| 0.753         | 0.27  | 70   | 0.6899          | 0.5763   |
| 0.7008        | 0.31  | 80   | 0.6694          | 0.6014   |
| 0.7011        | 0.35  | 90   | 0.6534          | 0.5854   |
| 0.674         | 0.38  | 100  | 0.6445          | 0.5740   |
| 0.7216        | 0.42  | 110  | 0.6421          | 0.5695   |
| 0.7257        | 0.46  | 120  | 0.6440          | 0.5968   |
| 0.6821        | 0.5   | 130  | 0.6406          | 0.5968   |
| 0.6843        | 0.54  | 140  | 0.6443          | 0.5945   |
| 0.6632        | 0.58  | 150  | 0.6381          | 0.5923   |
| 0.6547        | 0.62  | 160  | 0.6427          | 0.5968   |
| 0.7543        | 0.65  | 170  | 0.6432          | 0.6082   |
| 0.6759        | 0.69  | 180  | 0.6437          | 0.5991   |
| 0.6666        | 0.73  | 190  | 0.6426          | 0.6014   |
| 0.7129        | 0.77  | 200  | 0.6411          | 0.5900   |
| 0.6393        | 0.81  | 210  | 0.6339          | 0.6059   |
| 0.654         | 0.85  | 220  | 0.6297          | 0.6059   |
| 0.7032        | 0.88  | 230  | 0.6241          | 0.6082   |
| 0.6785        | 0.92  | 240  | 0.6210          | 0.6036   |
| 0.6397        | 0.96  | 250  | 0.6200          | 0.6014   |
| 0.624         | 1.0   | 260  | 0.6181          | 0.6036   |


### Framework versions

- PEFT 0.8.2
- Transformers 4.38.1
- Pytorch 2.0.0+cu117
- Datasets 2.17.1
- Tokenizers 0.15.2