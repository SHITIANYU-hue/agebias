

Domain_Specific_Preference 

- 进入该文件夹，在终端配置环境：

​		`conda create -n dsp python=3.9`

​		`pip install -r requirements.txt`

- 下载 llama2 模型

  `pip install -U huggingface_hub`
  
  `pip install -U hf-transfer`

  linux系统设置镜像站：

​		`export HF_ENDPOINT=https://hf-mirror.com`

​		linux系统开启 hf_transfer

​		`export HF_HUB_ENABLE_HF_TRANSFER=1`

​		llama2 下载指令：

		nohup huggingface-cli download \
		--resume-download meta-llama/Llama-2-7b-hf \
		--local-dir /home/student2021/srcao/base_LLM/llama2-7b \
		--token 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 &
​		请将修改 local-dir 的路径，确保 base_LLM 与 Domain_Specific_Preference 和 llama-factory 两个文件夹 处于同一个父文件夹下。

- 训练模型

  首先，登录 [wandb](https://wandb.ai/site)  ，生成用户的 token

  然后，在终端进行设置

  `wandb login --relogin`

  最后，启动训练程序 

  `bash train_nohup.sh`

  注意，需要修改 MODEL_PATH 和 output_dir 的路径

- 文件结构

  1.代码文件

  ​	model.py 定义偏好模型的结构

  ​	train.py、trainer.py 分别定义训练的循环过程 和 loss 的具体计算过程

  2.数据文件

  ​	age_bias_contain_score.json 包含所有样本，按照 0.95:0.05 划分成训练集和测试集。

  ​	1 和 9 结尾的 json 文件，分别只包含 1个测试样本 和 9 个训练样本，用于debug。

  ​	![image-20240303182549048](readme.assets/image-20240303182549048.png)



llama-factory 

- 进入该文件夹，在终端配置环境：

​		`conda create -n llama-factory python=3.10`

​		`pip install -r requirements.txt`

​		注意，由于我这边的服务器 cuda 版本是 11.7，所以安装的是 torch 2.0.1。若 cuda 版本不一样，需要到官网 [previous pytorch versions](https://pytorch.org/get-started/previous-versions/) 找对应 torch 版本安装。

- 训练偏好模型

  根据 llama factory 的指南设置，训练参数

  `bash train_on_GPU_0.sh`

  完全按照 domain specific preference 设置训练参数

  `bash train_pm_with_dsp_params.sh`

- 根据 RLHF 训练

  `bash train_llm_ppo.sh`

- 模型预测

  `bash predict_llm_trained_by_ppo.sh`

​		注意，修改每个 .sh 文件中的 MODEL_PATH 等路径。

​				  如果需要重新训练，请先删除 rm_checkpoint 和 ppo_checkpoint下的文件。

- 主要文件

​		训练代码 位于 src/llmtuner/train/ 文件夹下

​		数据集文件位于 /data/ 文件夹下

![image-20240303185638087](readme.assets/image-20240303185638087.png)

​	![image-20240303185729966](readme.assets/image-20240303185729966.png)	
