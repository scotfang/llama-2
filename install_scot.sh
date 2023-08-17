#!/bin/bash -ex

CONDA_ENV_NAME="py39_llama_hf"

conda create --name $CONDA_ENV_NAME python=3.9
conda activate $CONDA_ENV_NAME

pip install -f https://download.pytorch.org/whl/torch_stable.html -r requirements_scot.txt

huggingface-cli login  # Use token with Write Access, selected "No" for git credentials

ipython kernel install --name $CONDA_ENV_NAME --user

# pip install wget

# pip install -U -r requirements.txt 
# ipython kernel install --name $CONDA_ENV_NAME --user
