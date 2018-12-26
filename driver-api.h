#ifndef __DRIVER_API__
#define __DRIVER_API__

#define HVM_DEL_IOCTL_PERFORM_OUTB 0x20

struct hvm_del_req {
    unsigned short port;
    unsigned char val;
};

#endif
