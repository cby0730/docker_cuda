FROM nvidia/cuda:11.8.0-devel-ubuntu22.04

LABEL author="bychen" version="1.0" description="Doker Image including cuda, pyenv and pipenv"

# Localtime
ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Set LANG environment variable
ENV LANG C.UTF-8

# install basic package
RUN apt update \
    && apt upgrade -y \
    && apt install apt-utils locales vim wget curl git-all htop tmux sudo -y

RUN mkdir -p /.script
COPY /exec_shell/ /.script/
RUN chmod +x /.script/*.sh
RUN /.script/language.sh

# 啟動一個登入 shell
ENTRYPOINT ["/.script/entrypoint.sh"]
CMD ["bash"]