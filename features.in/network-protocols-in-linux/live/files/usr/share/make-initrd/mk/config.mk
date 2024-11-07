PROJECT = make-initrd
VERSION = 2.31.0

# Temprary directory used for processing all images.
# It is created once when the make-initrd starts.
TEMPDIR		?=

ifeq "$(TEMPDIR)" ''
$(error TEMPDIR is empty. You SHOULD NOT use config.mk directly.)
endif

# This is the working directory for each image.
# It is created for each configuration file.
WORKDIR_SUFFIX	?= work
WORKDIR		 = $(TEMPDIR)/$(KERNEL).$(WORKDIR_SUFFIX)

# This is the root directory of the image.
ROOTDIR		 = $(WORKDIR)/img

# In this directory are files received from autodetect.
GUESSDIR	 = $(WORKDIR)/guess

# This is directory used for bug-report target.
REPORTDIR	 = $(WORKDIR)/report

TOOLSDIR	:= /usr/share/make-initrd/tools
LOCALBUILDDIR	:= 
FEATURESDIR	:= /usr/share/make-initrd/features
DETECTDIR	:= /usr/share/make-initrd/guess
BASEDATADIR	:= /usr/share/make-initrd/data
RUNTIMEDIR	:= /lib/initrd
STATEDIR	:= /var/lib
BOOTDIR		?= /boot
SYSCONFDIR	:= /etc
DATADIR		:= /usr/share
LIBDIR		:= /usr/lib64
SYSFS_PATH	?= /sys
PROCFS_PATH	?= /proc

BIN_FEATURESDIR := /usr/libexec/make-initrd/features

feature_kbd_kbddir := /lib/kbd

UDEVD		:= /sbin/udevd
UDEVADM		:= /sbin/udevadm

BUSYBOX_PATH := $(RUNTIMEDIR)/sbin:$(RUNTIMEDIR)/usr/sbin:$(RUNTIMEDIR)/bin:$(RUNTIMEDIR)/usr/bin
SYSTEM_PATH  := /sbin:/usr/sbin:/usr/local/sbin:/bin:/usr/bin:/usr/local/bin
CURRENT_PATH := $(shell echo $$PATH)
BUILDDIR_PATH =

ifneq ($(LOCALBUILDDIR),)
BUILDDIR_PATH := :$(LOCALBUILDDIR)/sbin:$(LOCALBUILDDIR)/usr/sbin:$(LOCALBUILDDIR)/bin:$(LOCALBUILDDIR)/usr/bin
endif

PATH = $(TOOLSDIR)$(BUILDDIR_PATH):$(SYSTEM_PATH):$(CURRENT_PATH)


# Config file locations
INITRD_CONFIG		?=
INITRD_CONFIG_LIST	?= $(wildcard $(SYSCONFDIR)/initrd.mk $(SYSCONFDIR)/initrd.mk.d/*.mk)

ifeq "$(INITRD_CONFIG_LIST)" ''
$(info WARNING: No configuration files found. \
	Create an '$(SYSCONFDIR)/initrd.mk' file \
	or use the --config=FILE option)
endif

# Global variables
RESOLVE_MODALIAS	?= 1
USE_MODPROBE_BLACKLIST	?=
UDEV_VERSION		?= $(shell env "UDEVD=$(UDEVD)" "UDEVADM=$(UDEVADM)" $(TOOLSDIR)/udev-version)
KERNEL			?= $(shell uname -r)
KERNEL_CONFIG		?= $(BOOTDIR)/config-$(KERNEL)
KERNEL_MODULES_DIR	?= /lib/modules/$(KERNEL)
KERNEL_MODULES		?= $(KERNEL_MODULES_DIR)/kernel
ARCH			?= $(shell uname -m)
LIB_DIRS		?= /lib /lib64 /usr/lib /usr/lib64

FSTAB			?= /etc/fstab
PROC_MOUNTS		?= $(PROCFS_PATH)/mounts
MOUNTPOINTS		?= /
DEVICES			?=
DISABLE_FEATURES	?= systemd
DISABLE_GUESS		?=

ifdef VERBOSE
  verbose = -v
  Q =
  V = @
else
  Q = @
  V = @\#
endif

MSG   = echo "$$(msg-timestamp)"
MSG_N = echo -n "$$(msg-timestamp)"
VMSG := test -z "$(verbose)" || $(MSG)

include /usr/share/make-initrd/mk/functions.mk

ifneq "$(MAKELEVEL)" '0'

# User defaults
FEATURES		?=
IMAGE_SUFFIX		?=
IMAGEFILE		?= $(BOOTDIR)/initrd-$(KERNEL)$(IMAGE_SUFFIX).img
FIRMWARE_DIRS		?= /lib/firmware/updates /lib/firmware /lib/firmware/$(KERNEL)/updates /lib/firmware/$(KERNEL)
VERBOSE			?=
BLACKLIST_MODULES	?=

PUT_DIRS  ?=
PUT_FILES ?=
PUT_PROGS ?=

# Load user configuration
include $(INITRD_CONFIG)

PUT_FEATURE_DIRS  =
PUT_FEATURE_FILES =
PUT_FEATURE_PROGS =
PUT_FEATURE_PROGS_WILDCARD =
PUT_FEATURE_LIBS =

feature-configs = $(call wildcard-features,config.mk)

ifeq "$(feature-configs)" ''
$(error Unable to find feature configs. Something goes wrong.)
endif

# Load extra configs
include $(feature-configs)

endif # MAKELEVEL != 0
