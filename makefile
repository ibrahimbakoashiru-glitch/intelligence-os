all:
	nasm -f elf32 boot/boot.asm -o boot.o
	gcc -m32 -ffreestanding -c kernel/kernel.c -o kernel.o
	ld -m elf_i386 -T linker.ld boot.o kernel.o -o kernel.bin
