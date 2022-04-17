	TARGET=*.asm
	DELL=*.lst *.bin *.img
all:
	nasm $(TARGET) -o _main.bin
	qemu-system-x86_64 -fda _main.bin
	rm -rf _main.bin
clean:
	rm -rf $(DELL)

qemu: all
	qemu-system-x86_64 -fda _main.bin

.PHONY:
	all 