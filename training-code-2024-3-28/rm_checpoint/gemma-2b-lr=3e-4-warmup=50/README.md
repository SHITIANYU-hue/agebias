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
- Loss: 0.5576
- Accuracy: 0.6788

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
- lr_scheduler_warmup_steps: 50
- num_epochs: 1.0
- mixed_precision_training: Native AMP

### Training results

| Training Loss | Epoch | Step | Validation Loss | Accuracy |
|:-------------:|:-----:|:----:|:---------------:|:--------:|
| 0.7997        | 0.04  | 10   | 0.7748          | 0.5535   |
| 0.8084        | 0.08  | 20   | 0.7310          | 0.5695   |
| 0.7911        | 0.12  | 30   | 0.7038          | 0.5786   |
| 0.7808        | 0.15  | 40   | 0.6644          | 0.5854   |
| 0.6889        | 0.19  | 50   | 0.6382          | 0.5740   |
| 0.6846        | 0.23  | 60   | 0.6650          | 0.5581   |
| 0.7586        | 0.27  | 70   | 0.6192          | 0.6173   |
| 0.6569        | 0.31  | 80   | 0.6219          | 0.5923   |
| 0.6394        | 0.35  | 90   | 0.6128          | 0.6219   |
| 0.6505        | 0.38  | 100  | 0.6009          | 0.6515   |
| 0.6631        | 0.42  | 110  | 0.5999          | 0.6333   |
| 0.6824        | 0.46  | 120  | 0.5993          | 0.6173   |
| 0.6467        | 0.5   | 130  | 0.5899          | 0.6219   |
| 0.63          | 0.54  | 140  | 0.5824          | 0.6150   |
| 0.62          | 0.58  | 150  | 0.5716          | 0.6150   |
| 0.5783        | 0.62  | 160  | 0.5790          | 0.6310   |
| 0.6851        | 0.65  | 170  | 0.5879          | 0.6446   |
| 0.5997        | 0.69  | 180  | 0.5680          | 0.6651   |
| 0.6082        | 0.73  | 190  | 0.5595          | 0.6583   |
| 0.6223        | 0.77  | 200  | 0.5577          | 0.6515   |
| 0.5806        | 0.81  | 210  | 0.5569          | 0.6629   |
| 0.6064        | 0.85  | 220  | 0.5567          | 0.6720   |
| 0.6255        | 0.88  | 230  | 0.5587          | 0.6674   |
| 0.6185        | 0.92  | 240  | 0.5610          | 0.6651   |
| 0.5664        | 0.96  | 250  | 0.5596          | 0.6811   |
| 0.5748        | 1.0   | 260  | 0.5576          | 0.6788   |


### Framework versions

- PEFT 0.8.2
- Transformers 4.38.1
- Pytorch 2.0.0+cu117
- Datasets 2.17.1
- Tokenizers 0.15.2