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
- Loss: 0.5583
- Accuracy: 0.6834

## Model description

More information needed

## Intended uses & limitations

More information needed

## Training and evaluation data

More information needed

## Training procedure

### Training hyperparameters

The following hyperparameters were used during training:
- learning_rate: 0.0003
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
- lr_scheduler_warmup_steps: 150
- num_epochs: 1.0
- mixed_precision_training: Native AMP

### Training results

| Training Loss | Epoch | Step | Validation Loss | Accuracy |
|:-------------:|:-----:|:----:|:---------------:|:--------:|
| 0.8015        | 0.04  | 10   | 0.7753          | 0.5558   |
| 0.8155        | 0.08  | 20   | 0.7642          | 0.5535   |
| 0.8051        | 0.12  | 30   | 0.7543          | 0.5535   |
| 0.8094        | 0.15  | 40   | 0.7251          | 0.5718   |
| 0.7294        | 0.19  | 50   | 0.6893          | 0.5923   |
| 0.7057        | 0.23  | 60   | 0.6641          | 0.5831   |
| 0.7285        | 0.27  | 70   | 0.6528          | 0.5831   |
| 0.6821        | 0.31  | 80   | 0.6425          | 0.5740   |
| 0.666         | 0.35  | 90   | 0.6303          | 0.5991   |
| 0.6417        | 0.38  | 100  | 0.6125          | 0.6196   |
| 0.6831        | 0.42  | 110  | 0.6167          | 0.6241   |
| 0.6873        | 0.46  | 120  | 0.6186          | 0.6128   |
| 0.6653        | 0.5   | 130  | 0.6050          | 0.6310   |
| 0.6329        | 0.54  | 140  | 0.5936          | 0.6378   |
| 0.6323        | 0.58  | 150  | 0.6032          | 0.6036   |
| 0.6049        | 0.62  | 160  | 0.6466          | 0.6401   |
| 0.7008        | 0.65  | 170  | 0.6068          | 0.6629   |
| 0.6261        | 0.69  | 180  | 0.5933          | 0.6401   |
| 0.5965        | 0.73  | 190  | 0.5796          | 0.6264   |
| 0.6418        | 0.77  | 200  | 0.5722          | 0.6401   |
| 0.603         | 0.81  | 210  | 0.5653          | 0.6515   |
| 0.6273        | 0.85  | 220  | 0.5668          | 0.6674   |
| 0.6616        | 0.88  | 230  | 0.5698          | 0.6743   |
| 0.6211        | 0.92  | 240  | 0.5757          | 0.6720   |
| 0.5895        | 0.96  | 250  | 0.5646          | 0.6788   |
| 0.5635        | 1.0   | 260  | 0.5583          | 0.6834   |


### Framework versions

- PEFT 0.8.2
- Transformers 4.38.1
- Pytorch 2.0.0+cu117
- Datasets 2.17.1
- Tokenizers 0.15.2