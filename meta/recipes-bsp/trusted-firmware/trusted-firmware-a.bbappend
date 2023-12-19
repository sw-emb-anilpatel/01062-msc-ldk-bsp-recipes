# Copyright (C) 2023 AVNET Embedded, MSC Technologies GmbH

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

BRANCH = "msc-renesas_2.9-develop"

SRC_URI = " \
		git://github.com/sw-emb-anilpatel/rzg_trusted-firmware-a.git;branch=${BRANCH};protocol=https \
		git://github.com/ARMmbed/mbedtls.git;branch=${BRANCH_mbedtls};name=mbedtls;destsuffix=mbedtls \
	"

SRCREV = "93b6c3a249f14ad1f2c92cb6ca505c8aa491e1a7"

PLATFORM_sm2s-rzg2l = "g2l"
EXTRA_FLAGS_sm2s-rzg2l = "BOARD=sm2s-rzg2l SPI_FLASH=AT25SF321B"

PLATFORM_sm2s-rzv2l = "v2l"
EXTRA_FLAGS_sm2s-rzv2l = "BOARD=sm2s-rzv2l SPI_FLASH=AT25SF321B"
