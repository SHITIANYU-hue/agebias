import dataclasses
import logging
import math
import os
import io
import sys
import time
import json
from datetime import datetime
from typing import Optional, Sequence, Union, List, Dict

import tqdm
import copy

import torch




def print_rank_0(message):
    if torch.distributed.is_initialized():
        if torch.distributed.get_rank() == 0:
            print(message, flush=True)
    else:
        print(message, flush=True)


def save_metrics(metrics_result):
    # 获取当前时间
    time_suffix = datetime.now()
    all_acc = metrics_result["Preference total Acc"]

    with open('step_eval_results.json','a',encoding='utf-8') as file:
        json.dump([time_suffix,all_acc],file)
