### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# begin properties
properties() { '
kernel.string=Morokoshi Kernel
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=pipa
device.name2=
supported.versions=13
'; } # end properties

# Install kernel image
block=boot;
is_slot_device=1;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

dump_boot;
flash_boot;

# Install dtb
block=vendor_boot;
is_slot_device=1;

reset_ak;
split_boot;
flash_boot;

# Install dtbo
flash_generic dtbo;
