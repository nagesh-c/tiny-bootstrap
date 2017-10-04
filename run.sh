#!/bin/sh

nasm -f bin boot.asm -o boot.com
dd if=boot.com of=boot.img bs=512 count=1

if [[ $1 == "bochs" ]]
then
	bochs -f bochsrc.txt
else
	qemu-system-i386 -m 128 boot.img
fi
