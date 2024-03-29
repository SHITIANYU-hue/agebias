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
- Loss: 0.9624
- Accuracy: 0.5535

## Model description

More information needed

## Intended uses & limitations

More information needed

## Training and evaluation data

More information needed

## Training procedure

### Training hyperparameters

The following hyperparameters were used during training:
- learning_rate: 1.5e-06
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
| 1.0283        | 0.08  | 20   | 1.0185          | 0.5535   |
| 1.0044        | 0.12  | 30   | 1.0177          | 0.5490   |
| 1.0204        | 0.15  | 40   | 1.0170          | 0.5513   |
| 1.013         | 0.19  | 50   | 1.0152          | 0.5490   |
| 1.0434        | 0.23  | 60   | 1.0131          | 0.5513   |
| 1.0023        | 0.27  | 70   | 1.0107          | 0.5490   |
| 1.0103        | 0.31  | 80   | 1.0079          | 0.5513   |
| 1.0259        | 0.35  | 90   | 1.0043          | 0.5558   |
| 1.0192        | 0.38  | 100  | 1.0003          | 0.5535   |
| 0.9799        | 0.42  | 110  | 0.9966          | 0.5581   |
| 0.9782        | 0.46  | 120  | 0.9924          | 0.5604   |
| 1.0063        | 0.5   | 130  | 0.9884          | 0.5558   |
| 0.9858        | 0.54  | 140  | 0.9848          | 0.5558   |
| 0.991         | 0.58  | 150  | 0.9814          | 0.5558   |
| 0.9868        | 0.62  | 160  | 0.9782          | 0.5581   |
| 0.9864        | 0.65  | 170  | 0.9754          | 0.5513   |
| 0.9778        | 0.69  | 180  | 0.9725          | 0.5513   |
| 1.001         | 0.73  | 190  | 0.9703          | 0.5490   |
| 0.9764        | 0.77  | 200  | 0.9685          | 0.5558   |
| 0.9818        | 0.81  | 210  | 0.9667          | 0.5513   |
| 0.9697        | 0.85  | 220  | 0.9653          | 0.5535   |
| 0.9667        | 0.88  | 230  | 0.9638          | 0.5535   |
| 0.9673        | 0.92  | 240  | 0.9630          | 0.5535   |
| 0.9839        | 0.96  | 250  | 0.9626          | 0.5558   |
| 0.9888        | 1.0   | 260  | 0.9624          | 0.5535   |


### Framework versions

- PEFT 0.8.2
- Transformers 4.38.1
- Pytorch 2.0.0+cu117
- Datasets 2.17.1
- Tokenizers 0.15.2