# Copyright (C) 2022 AVNET Embedded, MSC Technologies GmbH

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
		file://0001-sm2s-rzg2ul-Added-custom-board-in-trusted-firmware.patch \
		file://0002-sm2s-rzg2ul-Added-custom-board-DDR-configuration-fil.patch \
		file://0003-sm2s-rzg2ul-Added-support-for-AT25SF321B-qspi-flash.patch \
		file://0004-sm2s-rzg2ul-Added-correct-DDR-param-files.patch \
		file://0005-sm2s-rzg2ul-Forcefully-set-sm2s-rzg2ul-platform.patch"


PLATFORM_sm2s-rzg2ul = "g2ul"
EXTRA_FLAGS_sm2s-rzg2ul = "BOARD=g2ul_smarc SOC_TYPE=1 SPI_FLASH=AT25SF321B"
