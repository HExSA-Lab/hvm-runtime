# HVM runtime system

## Getting set up

First install prerequisites for building QEMU and Linux kernel (assuming CentOS/Fedora package names):

```Shell
[you@host] sudo dnf install -y glib2-devel zlib-devel pixman-devel bison flex elfutils-libelf-devel openssl-devel glibc-static
```

```Shell
[you@host] curl -sSf https://git.io/hvmrtsetup | sh

This grabs, builds, and prepares recent copies of
BusyBox (for the guest userspace), the Linux kernel (for the guest kernel), a virtual disk image for the guest (mounted at `/mnt`), and QEMU (the VMM), then builds the HVM runtime system and adds it to the virtual disk image. Once it's finished (it will take a good long while), you can boot the guest using QEMU with:


```Shell
[you@host] make run
```

You can run the guest user-space utility in the guest as follows:

```Shell
[you@guest> /mnt/hvm-user
```
