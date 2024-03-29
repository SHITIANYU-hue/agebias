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
- Loss: 0.9822
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
- lr_scheduler_type: cosine
- num_epochs: 1.0
- mixed_precision_training: Native AMP

### Training results

| Training Loss | Epoch | Step | Validation Loss | Accuracy |
|:-------------:|:-----:|:----:|:---------------:|:--------:|
| 1.0698        | 0.04  | 10   | 1.0176          | 0.5513   |
| 1.0239        | 0.08  | 20   | 1.0151          | 0.5467   |
| 0.9997        | 0.12  | 30   | 1.0126          | 0.5558   |
| 1.0204        | 0.15  | 40   | 1.0100          | 0.5535   |
| 1.012         | 0.19  | 50   | 1.0073          | 0.5513   |
| 1.0319        | 0.23  | 60   | 1.0047          | 0.5490   |
| 0.9938        | 0.27  | 70   | 1.0023          | 0.5490   |
| 1.0022        | 0.31  | 80   | 0.9999          | 0.5535   |
| 1.0181        | 0.35  | 90   | 0.9976          | 0.5558   |
| 1.0136        | 0.38  | 100  | 0.9955          | 0.5558   |
| 0.9753        | 0.42  | 110  | 0.9934          | 0.5581   |
| 0.9773        | 0.46  | 120  | 0.9916          | 0.5604   |
| 1.0077        | 0.5   | 130  | 0.9903          | 0.5604   |
| 0.992         | 0.54  | 140  | 0.9888          | 0.5604   |
| 0.9944        | 0.58  | 150  | 0.9873          | 0.5558   |
| 0.9893        | 0.62  | 160  | 0.9862          | 0.5535   |
| 0.9928        | 0.65  | 170  | 0.9852          | 0.5558   |
| 0.9849        | 0.69  | 180  | 0.9844          | 0.5535   |
| 1.0108        | 0.73  | 190  | 0.9837          | 0.5535   |
| 0.992         | 0.77  | 200  | 0.9833          | 0.5535   |
| 0.994         | 0.81  | 210  | 0.9829          | 0.5535   |
| 0.9816        | 0.85  | 220  | 0.9827          | 0.5558   |
| 0.9838        | 0.88  | 230  | 0.9823          | 0.5558   |
| 0.9823        | 0.92  | 240  | 0.9822          | 0.5535   |
| 1.0015        | 0.96  | 250  | 0.9822          | 0.5535   |
| 1.004         | 1.0   | 260  | 0.9822          | 0.5535   |


### Framework versions

- PEFT 0.8.2
- Transformers 4.38.1
- Pytorch 2.0.0+cu117
- Datasets 2.17.1
- Tokenizers 0.15.2