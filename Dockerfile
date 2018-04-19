FROM haskell:latest

RUN apt update
RUN apt -y upgrade
RUN apt -y install tmux zsh curl vim git
RUN apt -y install xz-utils make
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -O - | zsh || true
RUN apt -y install python python3
RUN stack upgrade
RUN stack update
RUN stack install ghcid

COPY . /root

RUN vim -u NONE -S ~/.vim/vimrcs/plugins.vim +PlugInstall +qall > /dev/null

ENTRYPOINT zsh
