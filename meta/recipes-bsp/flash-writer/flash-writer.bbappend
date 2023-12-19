# Copyright (C) 2023 AVNET Embedded, MSC Technologies GmbH

FLASH_WRITER_URL = "git://github.com/sw-emb-anilpatel/flash-writer.git;protocol=https"
BRANCH = "msc-renesas-develop"

SRCREV = "e5f49e0e7ed8d6213a78406f828600e1c4d4e816"

do_compile_prepend() {
        if [ "${MACHINE}" = "sm2s-rzg2l" ]; then
                BOARD="SM2S_RZG2L";
        fi
        if [ "${MACHINE}" = "sm2s-rzv2l" ]; then
                BOARD="SM2S_RZV2L";
        fi
}
