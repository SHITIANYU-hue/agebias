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
- name: llama2-7b-instruct-shuffle
  results: []
---

<!-- This model card has been generated automatically according to the information the Trainer had access to. You
should probably proofread and complete it, then remove this comment. -->

# llama2-7b-instruct-shuffle

This model is a fine-tuned version of [/home/student2020/srcao/base-model/llama2-7b](https://huggingface.co//home/student2020/srcao/base-model/llama2-7b) on the age_bias dataset.
It achieves the following results on the evaluation set:
- Loss: 0.7016
- Accuracy: 0.5034

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
- train_batch_size: 2
- eval_batch_size: 1
- seed: 42
- distributed_type: multi-GPU
- num_devices: 2
- gradient_accumulation_steps: 8
- total_train_batch_size: 32
- total_eval_batch_size: 2
- optimizer: Adam with betas=(0.9,0.999) and epsilon=1e-08
- lr_scheduler_type: linear
- lr_scheduler_warmup_steps: 200
- num_epochs: 1.0
- mixed_precision_training: Native AMP

### Training results

| Training Loss | Epoch | Step | Validation Loss | Accuracy |
|:-------------:|:-----:|:----:|:---------------:|:--------:|
| 0.7081        | 0.04  | 10   | 0.7136          | 0.4966   |
| 0.6889        | 0.08  | 20   | 0.7029          | 0.4943   |
| 0.6982        | 0.12  | 30   | 0.6937          | 0.4943   |
| 0.6968        | 0.15  | 40   | 0.6981          | 0.4966   |
| 0.6948        | 0.19  | 50   | 0.7123          | 0.4966   |
| 0.695         | 0.23  | 60   | 0.7075          | 0.4920   |
| 0.6889        | 0.27  | 70   | 0.7169          | 0.4920   |
| 0.7203        | 0.31  | 80   | 0.7082          | 0.4875   |
| 0.7107        | 0.35  | 90   | 0.6909          | 0.4692   |
| 0.6964        | 0.38  | 100  | 0.6855          | 0.4852   |
| 0.693         | 0.42  | 110  | 0.6854          | 0.4875   |
| 0.6921        | 0.46  | 120  | 0.7131          | 0.4806   |
| 0.7089        | 0.5   | 130  | 0.7141          | 0.5513   |
| 0.8098        | 0.54  | 140  | 0.7089          | 0.4601   |
| 0.7066        | 0.58  | 150  | 0.6888          | 0.4852   |
| 0.7074        | 0.62  | 160  | 0.6836          | 0.4487   |
| 0.7069        | 0.65  | 170  | 0.6796          | 0.4670   |
| 0.6974        | 0.69  | 180  | 0.6873          | 0.4920   |
| 0.705         | 0.73  | 190  | 0.7005          | 0.4852   |
| 0.7021        | 0.77  | 200  | 0.6989          | 0.4761   |
| 0.6986        | 0.81  | 210  | 0.7072          | 0.5239   |
| 0.6869        | 0.85  | 220  | 0.7021          | 0.5239   |
| 0.6933        | 0.88  | 230  | 0.7060          | 0.5421   |
| 0.7021        | 0.92  | 240  | 0.7055          | 0.4943   |
| 0.6949        | 0.96  | 250  | 0.7049          | 0.5011   |
| 0.6924        | 1.0   | 260  | 0.7016          | 0.5034   |


### Framework versions

- PEFT 0.8.2
- Transformers 4.38.1
- Pytorch 2.0.0+cu117
- Datasets 2.17.1
- Tokenizers 0.15.2