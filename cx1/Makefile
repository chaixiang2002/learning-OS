	TARGET=*.asm
all:
	nasm $(TARGET) -o _main.bin
	qemu-system-x86_64 -fda _main.bin
	rm -rf _main.bin
clean:
	rm -rf _main.bin

qemu: all
	qemu-system-x86_64 -fda _main.bin

.PHONY:
	all
#表示注释

# ipl.bin : ipl.nas Makefile，
# 意思是如果想要制作文件ipl.bin，
# 需要先检查ipl.nas和Makefile两个文件是否都准备好了，
# 如果都准备好了，Make工具会自动执行Makefile的下一行。 