#!/usr/bin/bash

# https://github.com/go-task/task/releases

# https://github.com/go-task/task/releases
# https://hub.fgit.ml
# https://kgithub.com
export TASK_VERSION=3.36.0 \
&&  wget -O task.tar.gz \
    http://mirror.ghproxy.com/https://github.com/go-task/task/releases/download/v${TASK_VERSION}/task_linux_amd64.tar.gz
mkdir ./task
tar -C ./task -xvf task.tar.gz
