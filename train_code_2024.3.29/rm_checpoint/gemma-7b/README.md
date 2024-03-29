---
license: other
library_name: peft
tags:
- llama-factory
- lora
- generated_from_trainer
base_model: /home/student2020/srcao/base-model/gemma-7b
metrics:
- accuracy
model-index:
- name: gemma-7b
  results: []
---

<!-- This model card has been generated automatically according to the information the Trainer had access to. You
should probably proofread and complete it, then remove this comment. -->

# gemma-7b

This model is a fine-tuned version of [/home/student2020/srcao/base-model/gemma-7b](https://huggingface.co//home/student2020/srcao/base-model/gemma-7b) on the age_bias dataset.
It achieves the following results on the evaluation set:
- Loss: 0.5613
- Accuracy: 0.6720

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
- lr_scheduler_warmup_steps: 200
- num_epochs: 1.0
- mixed_precision_training: Native AMP

### Training results

| Training Loss | Epoch | Step | Validation Loss | Accuracy |
|:-------------:|:-----:|:----:|:---------------:|:--------:|
| 0.9494        | 0.04  | 10   | 0.8096          | 0.5581   |
| 0.9465        | 0.08  | 20   | 0.7193          | 0.5718   |
| 0.8007        | 0.12  | 30   | 0.6608          | 0.5991   |
| 0.833         | 0.15  | 40   | 0.6371          | 0.6333   |
| 0.8011        | 0.19  | 50   | 0.6240          | 0.6469   |
| 0.7819        | 0.23  | 60   | 0.6934          | 0.6538   |
| 0.7813        | 0.27  | 70   | 0.5956          | 0.6492   |
| 0.8233        | 0.31  | 80   | 0.6112          | 0.6401   |
| 0.7814        | 0.35  | 90   | 0.6078          | 0.6515   |
| 0.6836        | 0.38  | 100  | 0.6032          | 0.6629   |
| 0.75          | 0.42  | 110  | 0.5781          | 0.6697   |
| 0.7788        | 0.46  | 120  | 0.5859          | 0.6720   |
| 0.7443        | 0.5   | 130  | 0.6594          | 0.6446   |
| 0.7693        | 0.54  | 140  | 0.5738          | 0.6401   |
| 0.7047        | 0.58  | 150  | 0.6271          | 0.6538   |
| 0.7197        | 0.62  | 160  | 0.6175          | 0.6515   |
| 0.7797        | 0.65  | 170  | 0.6025          | 0.6538   |
| 0.6801        | 0.69  | 180  | 0.6106          | 0.6674   |
| 0.6838        | 0.73  | 190  | 0.5917          | 0.6629   |
| 0.6834        | 0.77  | 200  | 0.5992          | 0.6538   |
| 0.6921        | 0.81  | 210  | 0.6033          | 0.6606   |
| 0.7102        | 0.85  | 220  | 0.5854          | 0.6492   |
| 0.7135        | 0.88  | 230  | 0.5758          | 0.6583   |
| 0.6894        | 0.92  | 240  | 0.5628          | 0.6560   |
| 0.5928        | 0.96  | 250  | 0.5766          | 0.6697   |
| 0.5846        | 1.0   | 260  | 0.5613          | 0.6720   |


### Framework versions

- PEFT 0.8.2
- Transformers 4.38.1
- Pytorch 2.0.0+cu117
- Datasets 2.17.1
- Tokenizers 0.15.2