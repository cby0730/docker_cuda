#!/usr/bin/env bash

apt-get install --no-install-recommends -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
apt-get install python3-pip -y

# 取得 Pyenv 的路徑
pyenv_path=$(command -v pyenv)

# 檢查並更新 Pyenv
if [ -n "$pyenv_path" ]; then
    echo "Pyenv have been installed, checking for update......"
    pyenv update
    echo "Pyenv sucessfully update!"
else
    echo "Pyenv hasn't been installed yet, installing now......"
    curl https://pyenv.run | bash
fi

# 將 pyenv 加入到環境變數
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init --path)"' >> ~/.profile
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

source ~/.profile
source ~/.bashrc

# 取得 Pipenv 的路徑
pipenv_path=$(command -v pipenv)

# 檢查並更新 Pipenv
if [ -n "$pipenv_path" ]; then
    echo "Pipenv have been installed, checking for update......"
    pipenv update
    echo "Pipenv sucessfully update!"
else
    echo "Pipenv hasn't been installed yet, installing now......"
    sudo -H pip3 install -U pipenv
fi

exec $shell
