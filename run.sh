#!/bin/sh

nasm -f bin boot.asm -o boot.com
dd if=boot.com of=boot.img bs=512 count=1
qemu-system-i386 -m 128 boot.img
