#!/usr/bin/bash

# https://github.com/go-task/task/releases

# wget -O task.tar.gz https://github.com/go-task/task/releases/download/v3.26.0/task_linux_amd64.tar.gz
# wget -O task.tar.gz https://hub.fgit.ml/go-task/task/releases/download/v3.26.0/task_linux_amd64.tar.gz
# wget -O task.tar.gz https://kgithub.com/go-task/task/releases/download/v3.26.0/task_linux_amd64.tar.gz
wget -O task.tar.gz http://ghproxy.com/https://github.com/go-task/task/releases/download/v3.26.0/task_linux_amd64.tar.gz
mkdir ./task
tar -C ./task -xvf task.tar.gz
