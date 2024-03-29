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
- Loss: 0.5651
- Accuracy: 0.6651

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
- lr_scheduler_warmup_steps: 100
- num_epochs: 1.0
- mixed_precision_training: Native AMP

### Training results

| Training Loss | Epoch | Step | Validation Loss | Accuracy |
|:-------------:|:-----:|:----:|:---------------:|:--------:|
| 0.8008        | 0.04  | 10   | 0.7737          | 0.5467   |
| 0.8134        | 0.08  | 20   | 0.7550          | 0.5581   |
| 0.8005        | 0.12  | 30   | 0.7267          | 0.5718   |
| 0.7915        | 0.15  | 40   | 0.6890          | 0.5854   |
| 0.7251        | 0.19  | 50   | 0.6709          | 0.5968   |
| 0.7072        | 0.23  | 60   | 0.6579          | 0.5877   |
| 0.7292        | 0.27  | 70   | 0.6394          | 0.5786   |
| 0.6746        | 0.31  | 80   | 0.6302          | 0.6378   |
| 0.671         | 0.35  | 90   | 0.6250          | 0.6446   |
| 0.6251        | 0.38  | 100  | 0.6353          | 0.5809   |
| 0.6672        | 0.42  | 110  | 0.6178          | 0.5877   |
| 0.6958        | 0.46  | 120  | 0.6552          | 0.5968   |
| 0.6857        | 0.5   | 130  | 0.6170          | 0.6128   |
| 0.6321        | 0.54  | 140  | 0.5918          | 0.6355   |
| 0.6538        | 0.58  | 150  | 0.5817          | 0.6629   |
| 0.5934        | 0.62  | 160  | 0.5927          | 0.6743   |
| 0.6985        | 0.65  | 170  | 0.6030          | 0.6606   |
| 0.6327        | 0.69  | 180  | 0.6005          | 0.6538   |
| 0.6412        | 0.73  | 190  | 0.5909          | 0.6674   |
| 0.6541        | 0.77  | 200  | 0.5833          | 0.6629   |
| 0.5959        | 0.81  | 210  | 0.5770          | 0.6674   |
| 0.6402        | 0.85  | 220  | 0.5735          | 0.6606   |
| 0.6533        | 0.88  | 230  | 0.5715          | 0.6674   |
| 0.6373        | 0.92  | 240  | 0.5748          | 0.6674   |
| 0.5818        | 0.96  | 250  | 0.5692          | 0.6651   |
| 0.5709        | 1.0   | 260  | 0.5651          | 0.6651   |


### Framework versions

- PEFT 0.8.2
- Transformers 4.38.1
- Pytorch 2.0.0+cu117
- Datasets 2.17.1
- Tokenizers 0.15.2