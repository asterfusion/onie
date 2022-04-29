# Asterfusion X532P

# Vendor's version number can be defined here.
# Available variable is 'VENDOR_VERSION'.
# e.g.,
# VENDOR_VERSION = .00.01

ONIE_ARCH ?= x86_64
SWITCH_ASIC_VENDOR = bft

VENDOR_REV ?= 0

# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),0)
  MACHINE_REV = 0
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
# As I know so far, the vendor ID of Asterfusion includes:
# 55955 (Suzhou)
# 56928 (Changsha)
# by tsihang(tsihang@asterfusion.com)
VENDOR_ID = 56928

I2CTOOLS_ENABLE = yes
I2CTOOLS_SYSEEPROM = no

# Console parameters
CONSOLE_SPEED = 115200
CONSOLE_DEV = 0

# Enable UEFI support
UEFI_ENABLE = yes

# Set Linux kernel version
LINUX_VERSION = 4.9
LINUX_MINOR_VERSION = 95

GCC_VERSION = 4.9.2

# Local mirror.
# Comment this will enable 'http://mirror.opencompute.org/onie'
# which defined in $ONIE_ROOT/build-config/Makefile.
# by tsihang, 2022-04-29.
ONIE_MIRROR = http://172.168.8.4/onie

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:
