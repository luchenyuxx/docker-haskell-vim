FROM debian:latest

RUN apt update
RUN apt -y upgrade
RUN apt -y install tmux zsh curl vim git
RUN apt -y install xz-utils make
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -O - | zsh || true
RUN apt -y install python python3
RUN curl -sSL https://get.haskellstack.org/ | sh
#RUN stack upgrade
#RUN stack update
#RUN rm /usr/local/bin/stack
#RUN ln -s ~/.local/bin/stack /usr/local/bin/stack
RUN stack install ghcid

COPY . /root

RUN vim -u NONE -S ~/.vim/vimrcs/plugins.vim +PlugInstall +qall > /dev/null

ENV SHELL /usr/bin/zsh

ENTRYPOINT zsh
