#!/bin/bash

if [ "$(uname -m)" != "x86_64" ]; then
    echo "Unsupported platform."
    exit 1
fi

if [ "$(uname)" == 'Darwin' ]; then
    OS='osx'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    OS='linux'
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi

rdmd util/gensyscall.d > source/syscall/arch/${OS}_x86_64.d
