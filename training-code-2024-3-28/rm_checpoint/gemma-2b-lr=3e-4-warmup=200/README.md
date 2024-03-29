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
- Loss: 0.5452
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
| 0.8006        | 0.04  | 10   | 0.7747          | 0.5467   |
| 0.8168        | 0.08  | 20   | 0.7668          | 0.5535   |
| 0.805         | 0.12  | 30   | 0.7516          | 0.5535   |
| 0.8083        | 0.15  | 40   | 0.7267          | 0.5740   |
| 0.7393        | 0.19  | 50   | 0.6960          | 0.5900   |
| 0.7357        | 0.23  | 60   | 0.6730          | 0.5923   |
| 0.7601        | 0.27  | 70   | 0.6584          | 0.5740   |
| 0.7038        | 0.31  | 80   | 0.6536          | 0.5581   |
| 0.6878        | 0.35  | 90   | 0.6388          | 0.5695   |
| 0.6791        | 0.38  | 100  | 0.6165          | 0.5809   |
| 0.7306        | 0.42  | 110  | 0.6299          | 0.6287   |
| 0.7145        | 0.46  | 120  | 0.6290          | 0.6059   |
| 0.6749        | 0.5   | 130  | 0.6158          | 0.6333   |
| 0.6449        | 0.54  | 140  | 0.6035          | 0.6446   |
| 0.6472        | 0.58  | 150  | 0.5972          | 0.6492   |
| 0.5962        | 0.62  | 160  | 0.6000          | 0.6515   |
| 0.6869        | 0.65  | 170  | 0.6008          | 0.6583   |
| 0.6472        | 0.69  | 180  | 0.5862          | 0.6583   |
| 0.6249        | 0.73  | 190  | 0.5739          | 0.6606   |
| 0.6496        | 0.77  | 200  | 0.5738          | 0.6697   |
| 0.5879        | 0.81  | 210  | 0.5739          | 0.6720   |
| 0.6243        | 0.85  | 220  | 0.5680          | 0.6651   |
| 0.6211        | 0.88  | 230  | 0.5620          | 0.6788   |
| 0.5997        | 0.92  | 240  | 0.5567          | 0.6993   |
| 0.5546        | 0.96  | 250  | 0.5456          | 0.6765   |
| 0.5472        | 1.0   | 260  | 0.5452          | 0.6720   |


### Framework versions

- PEFT 0.8.2
- Transformers 4.38.1
- Pytorch 2.0.0+cu117
- Datasets 2.17.1
- Tokenizers 0.15.2