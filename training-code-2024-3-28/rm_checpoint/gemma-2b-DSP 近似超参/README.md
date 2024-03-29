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
- Loss: 0.9821
- Accuracy: 0.5558

## Model description

More information needed

## Intended uses & limitations

More information needed

## Training and evaluation data

More information needed

## Training procedure

### Training hyperparameters

The following hyperparameters were used during training:
- learning_rate: 1e-06
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
| 1.0693        | 0.04  | 10   | 1.0186          | 0.5513   |
| 1.0291        | 0.08  | 20   | 1.0184          | 0.5513   |
| 1.0048        | 0.12  | 30   | 1.0183          | 0.5513   |
| 1.021         | 0.15  | 40   | 1.0176          | 0.5513   |
| 1.0138        | 0.19  | 50   | 1.0163          | 0.5467   |
| 1.0452        | 0.23  | 60   | 1.0149          | 0.5490   |
| 1.0046        | 0.27  | 70   | 1.0136          | 0.5513   |
| 1.0133        | 0.31  | 80   | 1.0123          | 0.5490   |
| 1.0297        | 0.35  | 90   | 1.0098          | 0.5513   |
| 1.0251        | 0.38  | 100  | 1.0071          | 0.5558   |
| 0.9855        | 0.42  | 110  | 1.0042          | 0.5535   |
| 0.9851        | 0.46  | 120  | 1.0017          | 0.5513   |
| 1.0164        | 0.5   | 130  | 0.9992          | 0.5513   |
| 0.9962        | 0.54  | 140  | 0.9969          | 0.5513   |
| 1.0028        | 0.58  | 150  | 0.9945          | 0.5535   |
| 0.9999        | 0.62  | 160  | 0.9925          | 0.5581   |
| 0.9997        | 0.65  | 170  | 0.9907          | 0.5513   |
| 0.9916        | 0.69  | 180  | 0.9888          | 0.5558   |
| 1.0161        | 0.73  | 190  | 0.9873          | 0.5558   |
| 0.9921        | 0.77  | 200  | 0.9859          | 0.5558   |
| 0.9974        | 0.81  | 210  | 0.9847          | 0.5558   |
| 0.9852        | 0.85  | 220  | 0.9838          | 0.5581   |
| 0.9822        | 0.88  | 230  | 0.9832          | 0.5558   |
| 0.9834        | 0.92  | 240  | 0.9825          | 0.5558   |
| 1.004         | 0.96  | 250  | 0.9822          | 0.5535   |
| 1.0068        | 1.0   | 260  | 0.9821          | 0.5558   |


### Framework versions

- PEFT 0.8.2
- Transformers 4.38.1
- Pytorch 2.0.0+cu117
- Datasets 2.17.1
- Tokenizers 0.15.2