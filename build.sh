#!/usr/bin/env bash


if [ "$(uname)" == 'Darwin' ]; then
    OS='osx'
elif [ "$(uname)" == 'FreeBSD' ]; then
    OS='freebsd'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    OS='linux'
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi

if [ "$(uname -m)" == "x86_64" -o "$(uname -m)" == "amd64" ]; then
    rdmd util/gensyscall.d > source/syscalld/os/${OS}_x86_64.d
elif [ "$(uname -m)" == "i686" ]; then
    rdmd util/gensyscall.d > source/syscalld/os/${OS}_x86.d
else
    echo "Unsupported platform."
    exit 1
fi
