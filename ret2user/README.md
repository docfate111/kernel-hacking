# explanation

- initramfs: what is used for the file system of the kernel
- compress.sh exploit.c: compiles exploit into file system and compresses the file system for use with QEMU
- decompress.sh: extract the initramfs.cpio.gz zip file into the initramfs folder
- run.sh: run the QEMU environment without any kernel mitigations
- vmlinuz: the compressed Linux kernel(sometimes called bzImage) we can extract it into the actual kernel ELF file called 
vmlinux for use with gdb
- within initfamfs is the vulnerable kernel driver hackme.ko which contains a buffer overflow
and information leak(which is used to leak the stack cookie)
