FROM rust:1-alpine3.12

WORKDIR /root

RUN apk --update add \
    vim \
    git \
    tmux \
    nodejs \
    npm \
    curl

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

COPY ./vimrc /root/.vimrc

ENV USER root

RUN rustup component add rustfmt rls rust-analysis rust-src

