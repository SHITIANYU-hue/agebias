#!/usr/bin/env python
# encoding:utf-8
__Author = 'srcao'
__Date__ = '2024/2/25 23:41$'

import os

father_dir = os.path.abspath(os.path.join(os.getcwd(), ".."))
current_dir = os.getcwd()
print('Father dir: %s' % father_dir)
print('Current dir: %s' % current_dir)

if not os.path.exists('.\output'):
    os.makedirs('.\output')
