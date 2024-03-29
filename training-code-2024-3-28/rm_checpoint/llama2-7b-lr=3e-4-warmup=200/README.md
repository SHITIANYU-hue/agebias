---
license: other
library_name: peft
tags:
- llama-factory
- lora
- generated_from_trainer
base_model: /home/student2020/srcao/base-model/llama2-7b
metrics:
- accuracy
model-index:
- name: llama2-7b
  results: []
---

<!-- This model card has been generated automatically according to the information the Trainer had access to. You
should probably proofread and complete it, then remove this comment. -->

# llama2-7b

This model is a fine-tuned version of [/home/student2020/srcao/base-model/llama2-7b](https://huggingface.co//home/student2020/srcao/base-model/llama2-7b) on the age_bias dataset.
It achieves the following results on the evaluation set:
- Loss: 0.4427
- Accuracy: 0.7608

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
| 0.7355        | 0.04  | 10   | 0.7102          | 0.4806   |
| 0.7104        | 0.08  | 20   | 0.6847          | 0.4920   |
| 0.6973        | 0.12  | 30   | 0.6559          | 0.4989   |
| 0.6614        | 0.15  | 40   | 0.6309          | 0.4897   |
| 0.6678        | 0.19  | 50   | 0.6192          | 0.4875   |
| 0.6267        | 0.23  | 60   | 0.6112          | 0.4761   |
| 0.6488        | 0.27  | 70   | 0.5972          | 0.5080   |
| 0.6538        | 0.31  | 80   | 0.5919          | 0.5353   |
| 0.582         | 0.35  | 90   | 0.5795          | 0.5399   |
| 0.5794        | 0.38  | 100  | 0.5691          | 0.5718   |
| 0.6339        | 0.42  | 110  | 0.5651          | 0.5945   |
| 0.631         | 0.46  | 120  | 0.5537          | 0.6014   |
| 0.5992        | 0.5   | 130  | 0.5433          | 0.6196   |
| 0.5607        | 0.54  | 140  | 0.5437          | 0.6674   |
| 0.5584        | 0.58  | 150  | 0.5271          | 0.6310   |
| 0.5209        | 0.62  | 160  | 0.5310          | 0.6538   |
| 0.5844        | 0.65  | 170  | 0.5031          | 0.7016   |
| 0.5025        | 0.69  | 180  | 0.4976          | 0.7358   |
| 0.5255        | 0.73  | 190  | 0.4872          | 0.6993   |
| 0.5078        | 0.77  | 200  | 0.4843          | 0.7244   |
| 0.4797        | 0.81  | 210  | 0.4701          | 0.7426   |
| 0.5177        | 0.85  | 220  | 0.4756          | 0.6993   |
| 0.4877        | 0.88  | 230  | 0.4668          | 0.7062   |
| 0.4766        | 0.92  | 240  | 0.4359          | 0.7585   |
| 0.4111        | 0.96  | 250  | 0.4498          | 0.7608   |
| 0.4673        | 1.0   | 260  | 0.4427          | 0.7608   |


### Framework versions

- PEFT 0.8.2
- Transformers 4.38.1
- Pytorch 2.0.0+cu117
- Datasets 2.17.1
- Tokenizers 0.15.2