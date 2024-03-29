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
- Loss: 1.0014
- Accuracy: 0.5490

## Model description

More information needed

## Intended uses & limitations

More information needed

## Training and evaluation data

More information needed

## Training procedure

### Training hyperparameters

The following hyperparameters were used during training:
- learning_rate: 5e-07
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
- num_epochs: 1.0
- mixed_precision_training: Native AMP

### Training results

| Training Loss | Epoch | Step | Validation Loss | Accuracy |
|:-------------:|:-----:|:----:|:---------------:|:--------:|
| 1.07          | 0.04  | 10   | 1.0180          | 0.5513   |
| 1.0252        | 0.08  | 20   | 1.0168          | 0.5490   |
| 1.0016        | 0.12  | 30   | 1.0161          | 0.5535   |
| 1.0243        | 0.15  | 40   | 1.0148          | 0.5490   |
| 1.0169        | 0.19  | 50   | 1.0139          | 0.5467   |
| 1.0386        | 0.23  | 60   | 1.0127          | 0.5535   |
| 1.0011        | 0.27  | 70   | 1.0114          | 0.5581   |
| 1.0108        | 0.31  | 80   | 1.0106          | 0.5535   |
| 1.0291        | 0.35  | 90   | 1.0097          | 0.5467   |
| 1.0262        | 0.38  | 100  | 1.0087          | 0.5513   |
| 0.9871        | 0.42  | 110  | 1.0079          | 0.5581   |
| 0.9899        | 0.46  | 120  | 1.0074          | 0.5513   |
| 1.0228        | 0.5   | 130  | 1.0065          | 0.5513   |
| 1.0065        | 0.54  | 140  | 1.0058          | 0.5581   |
| 1.0106        | 0.58  | 150  | 1.0053          | 0.5513   |
| 1.0066        | 0.62  | 160  | 1.0045          | 0.5513   |
| 1.0098        | 0.65  | 170  | 1.0039          | 0.5535   |
| 1.0016        | 0.69  | 180  | 1.0035          | 0.5513   |
| 1.0289        | 0.73  | 190  | 1.0031          | 0.5558   |
| 1.0094        | 0.77  | 200  | 1.0024          | 0.5535   |
| 1.012         | 0.81  | 210  | 1.0023          | 0.5513   |
| 0.9981        | 0.85  | 220  | 1.0020          | 0.5513   |
| 0.9997        | 0.88  | 230  | 1.0016          | 0.5535   |
| 0.9985        | 0.92  | 240  | 1.0016          | 0.5513   |
| 1.0198        | 0.96  | 250  | 1.0013          | 0.5535   |
| 1.0223        | 1.0   | 260  | 1.0014          | 0.5490   |


### Framework versions

- PEFT 0.8.2
- Transformers 4.38.1
- Pytorch 2.0.0+cu117
- Datasets 2.17.1
- Tokenizers 0.15.2