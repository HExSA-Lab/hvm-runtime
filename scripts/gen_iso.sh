#!/bin/sh

mkdir -p iso/boot
mkdir -p iso/isolinux

cp $1/arch/x86/boot/bzImage iso/boot/vmlinuz64
cp initramfs.cpio.gz iso/boot/initrd.img
cp /usr/share/syslinux/*.* iso/isolinux
cp scripts/isolinux.cfg iso/isolinux/isolinux.cfg


xorriso -as mkisofs -l -r -J -V "CUSTOM_LINUX" \
	-b isolinux/isolinux.bin \
	-isohybrid-mbr /usr/share/syslinux/isohdpfx.bin \
	-no-emul-boot \
	-boot-load-size 4 \
	-boot-info-table \
	-c isolinux/boot.cat \
	-o $2 \
	iso/

rm -rf iso
