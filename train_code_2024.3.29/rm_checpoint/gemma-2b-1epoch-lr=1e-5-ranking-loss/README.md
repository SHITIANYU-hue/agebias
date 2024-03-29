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
- Loss: 0.7139
- Accuracy: 0.5763

## Model description

More information needed

## Intended uses & limitations

More information needed

## Training and evaluation data

More information needed

## Training procedure

### Training hyperparameters

The following hyperparameters were used during training:
- learning_rate: 1e-05
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
| 0.7998        | 0.04  | 10   | 0.7752          | 0.5490   |
| 0.8198        | 0.08  | 20   | 0.7757          | 0.5490   |
| 0.8137        | 0.12  | 30   | 0.7752          | 0.5513   |
| 0.8307        | 0.15  | 40   | 0.7730          | 0.5513   |
| 0.7745        | 0.19  | 50   | 0.7728          | 0.5490   |
| 0.808         | 0.23  | 60   | 0.7694          | 0.5513   |
| 0.8011        | 0.27  | 70   | 0.7655          | 0.5604   |
| 0.7512        | 0.31  | 80   | 0.7650          | 0.5581   |
| 0.788         | 0.35  | 90   | 0.7585          | 0.5535   |
| 0.7824        | 0.38  | 100  | 0.7535          | 0.5581   |
| 0.7703        | 0.42  | 110  | 0.7540          | 0.5626   |
| 0.7584        | 0.46  | 120  | 0.7509          | 0.5581   |
| 0.7649        | 0.5   | 130  | 0.7418          | 0.5581   |
| 0.7538        | 0.54  | 140  | 0.7421          | 0.5558   |
| 0.7566        | 0.58  | 150  | 0.7370          | 0.5649   |
| 0.7183        | 0.62  | 160  | 0.7320          | 0.5626   |
| 0.8185        | 0.65  | 170  | 0.7264          | 0.5649   |
| 0.7922        | 0.69  | 180  | 0.7249          | 0.5672   |
| 0.7347        | 0.73  | 190  | 0.7224          | 0.5695   |
| 0.7945        | 0.77  | 200  | 0.7206          | 0.5786   |
| 0.761         | 0.81  | 210  | 0.7207          | 0.5763   |
| 0.7698        | 0.85  | 220  | 0.7187          | 0.5763   |
| 0.7673        | 0.88  | 230  | 0.7163          | 0.5763   |
| 0.7563        | 0.92  | 240  | 0.7145          | 0.5809   |
| 0.7335        | 0.96  | 250  | 0.7164          | 0.5809   |
| 0.7714        | 1.0   | 260  | 0.7139          | 0.5763   |


### Framework versions

- PEFT 0.8.2
- Transformers 4.38.1
- Pytorch 2.0.0+cu117
- Datasets 2.17.1
- Tokenizers 0.15.2