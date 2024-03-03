import dataclasses
import logging
import math
import os
import pandas as pd
import io
import sys
import time
import json
from typing import Optional, Sequence, Union, List, Dict
from matplotlib import pyplot as plt
from matplotlib import rcParams
rcParams['font.family'] = 'SimHei'

import tqdm
import copy
import torch


def print_rank_0(message):
    if torch.distributed.is_initialized():
        if torch.distributed.get_rank() == 0:
            print(message, flush=True)
    else:
        print(message, flush=True)

def draw_acc(filenames,batchsize=1):
    x_data = []
    y_data = []
    labels = []
    for i in range(len(filenames)):
        df = pd.read_csv(filenames[i])
        labels.append(filenames[i].split('.csv')[0].split('-')[-1])
        total_num = df.shape[0]
        x = []
        y = []
        for j in range(total_num):
            x.append(df.at[j,'Step'])
            y.append(batchsize*df.at[j,'total Acc'])
        x_data.append(x)
        y_data.append(y)

    fig, ax = plt.subplots()  # 创建图实例


    for i in range(len(filenames)):
        ax.plot(x_data[i], y_data[i], label=labels[i])

    ax.set_xlabel('样本数量')  # 设置x轴名称 x label
    ax.set_ylabel('准确率')  # 设置y轴名称 y label
    ax.set_title('不同权重下模仿学习损失函数对偏好模型准确率的影响图')  # 设置图名为Simple Plot
    ax.legend()  # 自动检测要在图例中显示的元素，并且显示
    plt.savefig("acc.png")
    plt.show()  # 图形可视化


if __name__=="__main__":
    folder_path = './LM los & acc'
    # 获取文件夹中的文件列表
    file_list = os.listdir(folder_path)
    file_list = [os.path.join(folder_path, f) for f in file_list]
    draw_acc(file_list)