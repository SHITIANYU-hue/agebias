---
license: other
library_name: peft
tags:
- llama-factory
- lora
- generated_from_trainer
base_model: /home/student2020/srcao/base-model/mistral-7b
metrics:
- accuracy
model-index:
- name: mistral-7b
  results: []
---

<!-- This model card has been generated automatically according to the information the Trainer had access to. You
should probably proofread and complete it, then remove this comment. -->

# mistral-7b

This model is a fine-tuned version of [/home/student2020/srcao/base-model/mistral-7b](https://huggingface.co//home/student2020/srcao/base-model/mistral-7b) on the age_bias dataset.
It achieves the following results on the evaluation set:
- Loss: 0.4125
- Accuracy: 0.7654

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
| 1.2957        | 0.04  | 10   | 1.0587          | 0.4100   |
| 1.1408        | 0.08  | 20   | 0.7392          | 0.4100   |
| 1.0406        | 0.12  | 30   | 0.7049          | 0.4100   |
| 0.8842        | 0.15  | 40   | 0.6851          | 0.4100   |
| 0.9215        | 0.19  | 50   | 0.6736          | 0.4146   |
| 0.8214        | 0.23  | 60   | 0.5939          | 0.4260   |
| 0.8128        | 0.27  | 70   | 0.6162          | 0.4351   |
| 0.7788        | 0.31  | 80   | 0.5913          | 0.4487   |
| 0.7502        | 0.35  | 90   | 0.5736          | 0.4556   |
| 0.7134        | 0.38  | 100  | 0.5530          | 0.4374   |
| 0.743         | 0.42  | 110  | 0.6463          | 0.4077   |
| 0.8452        | 0.46  | 120  | 0.7165          | 0.4260   |
| 0.8215        | 0.5   | 130  | 0.6016          | 0.4510   |
| 0.6903        | 0.54  | 140  | 0.5748          | 0.5945   |
| 0.6051        | 0.58  | 150  | 0.5375          | 0.6401   |
| 0.5721        | 0.62  | 160  | 0.5325          | 0.6128   |
| 0.6025        | 0.65  | 170  | 0.5248          | 0.6014   |
| 0.528         | 0.69  | 180  | 0.4798          | 0.7517   |
| 0.5077        | 0.73  | 190  | 0.4994          | 0.7153   |
| 0.4972        | 0.77  | 200  | 0.4835          | 0.7540   |
| 0.5341        | 0.81  | 210  | 0.4815          | 0.7403   |
| 0.4849        | 0.85  | 220  | 0.4534          | 0.7563   |
| 0.461         | 0.88  | 230  | 0.4610          | 0.7768   |
| 0.4888        | 0.92  | 240  | 0.4294          | 0.7631   |
| 0.4471        | 0.96  | 250  | 0.4238          | 0.7768   |
| 0.4306        | 1.0   | 260  | 0.4125          | 0.7654   |


### Framework versions

- PEFT 0.8.2
- Transformers 4.38.1
- Pytorch 2.0.0+cu117
- Datasets 2.17.1
- Tokenizers 0.15.2