FROM alpine:3.12.2

WORKDIR /root

RUN apk --update add \
    vim \
    git \
    curl

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

COPY ./vimrc /root/.vimrc
