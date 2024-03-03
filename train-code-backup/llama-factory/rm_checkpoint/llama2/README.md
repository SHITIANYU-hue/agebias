---
license: other
library_name: peft
tags:
- llama-factory
- lora
- generated_from_trainer
base_model: /home/student2021/srcao/base_LLM/llama2-7b
metrics:
- accuracy
model-index:
- name: llama2
  results: []
---

<!-- This model card has been generated automatically according to the information the Trainer had access to. You
should probably proofread and complete it, then remove this comment. -->

# llama2

This model is a fine-tuned version of [/home/student2021/srcao/base_LLM/llama2-7b](https://huggingface.co//home/student2021/srcao/base_LLM/llama2-7b) on the age_bias_for_train dataset.
It achieves the following results on the evaluation set:
- Loss: 0.7294
- Accuracy: 0.5060

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
- eval_batch_size: 8
- seed: 42
- gradient_accumulation_steps: 4
- total_train_batch_size: 4
- optimizer: Adam with betas=(0.9,0.999) and epsilon=1e-08
- lr_scheduler_type: cosine
- num_epochs: 1.0
- mixed_precision_training: Native AMP

### Training results

| Training Loss | Epoch | Step | Validation Loss | Accuracy |
|:-------------:|:-----:|:----:|:---------------:|:--------:|
| 0.8485        | 0.03  | 50   | 0.8035          | 0.4820   |
| 0.8128        | 0.05  | 100  | 0.7937          | 0.4844   |
| 0.8189        | 0.08  | 150  | 0.7846          | 0.4892   |
| 0.8229        | 0.1   | 200  | 0.7779          | 0.4916   |
| 0.7979        | 0.13  | 250  | 0.7717          | 0.4988   |
| 0.793         | 0.15  | 300  | 0.7658          | 0.4988   |
| 0.7758        | 0.18  | 350  | 0.7609          | 0.4964   |
| 0.8148        | 0.2   | 400  | 0.7575          | 0.4988   |
| 0.8007        | 0.23  | 450  | 0.7546          | 0.4988   |
| 0.7496        | 0.25  | 500  | 0.7504          | 0.4940   |
| 0.7939        | 0.28  | 550  | 0.7480          | 0.4988   |
| 0.7813        | 0.3   | 600  | 0.7457          | 0.5012   |
| 0.7639        | 0.33  | 650  | 0.7439          | 0.5036   |
| 0.7804        | 0.35  | 700  | 0.7420          | 0.5036   |
| 0.7804        | 0.38  | 750  | 0.7404          | 0.5060   |
| 0.8038        | 0.4   | 800  | 0.7392          | 0.5060   |
| 0.7664        | 0.43  | 850  | 0.7382          | 0.5084   |
| 0.7978        | 0.46  | 900  | 0.7371          | 0.5084   |
| 0.7757        | 0.48  | 950  | 0.7359          | 0.5060   |
| 0.7912        | 0.51  | 1000 | 0.7348          | 0.5132   |
| 0.7522        | 0.53  | 1050 | 0.7339          | 0.5132   |
| 0.7406        | 0.56  | 1100 | 0.7332          | 0.5084   |
| 0.7767        | 0.58  | 1150 | 0.7326          | 0.5084   |
| 0.763         | 0.61  | 1200 | 0.7321          | 0.5060   |
| 0.752         | 0.63  | 1250 | 0.7315          | 0.5060   |
| 0.7524        | 0.66  | 1300 | 0.7311          | 0.5012   |
| 0.7594        | 0.68  | 1350 | 0.7308          | 0.5060   |
| 0.7576        | 0.71  | 1400 | 0.7305          | 0.5012   |
| 0.7487        | 0.73  | 1450 | 0.7303          | 0.5060   |
| 0.763         | 0.76  | 1500 | 0.7301          | 0.5060   |
| 0.7631        | 0.78  | 1550 | 0.7298          | 0.5060   |
| 0.7646        | 0.81  | 1600 | 0.7297          | 0.5036   |
| 0.7839        | 0.83  | 1650 | 0.7296          | 0.5060   |
| 0.7609        | 0.86  | 1700 | 0.7295          | 0.5036   |
| 0.7632        | 0.89  | 1750 | 0.7295          | 0.5036   |
| 0.7795        | 0.91  | 1800 | 0.7294          | 0.5036   |
| 0.7433        | 0.94  | 1850 | 0.7294          | 0.5036   |
| 0.7468        | 0.96  | 1900 | 0.7294          | 0.5036   |
| 0.7523        | 0.99  | 1950 | 0.7294          | 0.5060   |


### Framework versions

- PEFT 0.9.0
- Transformers 4.38.1
- Pytorch 2.0.1+cu117
- Datasets 2.17.1
- Tokenizers 0.15.2