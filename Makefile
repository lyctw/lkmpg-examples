PWD := $(shell pwd)
KERNEL_DIR := /lib/modules/$(shell uname -r)/build

obj-m := \
  bottomhalf.o \
  chardev.o \
  chardev2.o \
  completions.o \
  cryptosha256.o \
  cryptosk.o \
  devicemodel.o \
  example_atomic.o \
  example_mutex.o \
  example_rwlock.o \
  example_spinlock.o \
  example_tasklet.o \
  hello-1.o \
  hello-2.o \
  hello-3.o \
  hello-4.o \
  hello-5.o \
  hello-sysfs.o \
  intrpt.o \
  ioctl.o \
  kbleds.o \
  print_string.o \
  procfs1.o \
  procfs2.o \
  procfs3.o \
  procfs4.o \
  sched.o \
  sleep.o \
  syscall.o \
  vinput.o \
  vinput.h \
  vkbd.o

obj-m += startstop.o
startstop-objs := start.o stop.o

all:
	make -C $(KERNEL_DIR) M=$(PWD) modules
clean:
	make -C $(KERNEL_DIR) M=$(PWD) clean
