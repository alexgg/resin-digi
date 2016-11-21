IMAGE_FSTYPES_append_ccimx6ul = " resin-sdcard"

RESIN_IMAGE_BOOTLOADER_ccimx6ul = "u-boot"

RESIN_BOOT_PARTITION_FILES_ccimx6ul = " \
    ${KERNEL_IMAGETYPE}-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    "
RESIN_BOOT_PARTITION_FILES_ccimx6ulsbc = " \
    zImage-imx6ul-ccimx6ulsbc.dtb:/imx6ul-ccimx6ulsbc.dtb \
    "
RESIN_BOOT_PARTITION_FILES_ccimx6ulstarter = " \
    zImage-imx6ul-ccimx6ulstarter.dtb:/imx6ul-ccimx6ulstarter.dtb \
    "
IMAGE_CMD_resin-sdcard_append_ccimx6ul () {
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.imx of=${RESIN_SDIMG} conv=notrunc seek=2 bs=512
}

