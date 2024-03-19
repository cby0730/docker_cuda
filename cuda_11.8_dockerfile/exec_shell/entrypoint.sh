#!/usr/bin/env bash

source ~/.profile
echo "*****************************************************************************************************"
echo "| Pyenv have been installed, use 'pyenv install 3.x.x' to install the python version you need.      |"
echo "*****************************************************************************************************"
echo "| Use pipenv to start your project!                                                                 |"  
echo "| and you can cd into project_dir and use 'pipenv install' to install the packages you need.        |"
echo "| Finally, use 'pipenv --python 3.x' to specify the python version you want to use for the project. |"
echo "*****************************************************************************************************"

#pyenv install 3.9
#mkdir ~/project
#cd ~/project
#pipenv --python 3.9
#pipenv install torch torchvision torchaudio numpy pandas matplotlib

exec "$@"
