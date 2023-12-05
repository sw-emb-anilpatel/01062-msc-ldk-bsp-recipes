# Copyright (C) 2023 AVNET Embedded, MSC Technologies GmbH

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append += " \
                   file://0001-sm2s-rzg2ul-Added-custom-board-sm2s-rzg2ul-support.patch \
			"

do_compile_prepend() {
        if [ "${MACHINE}" = "sm2s-rzg2ul" ]; then
                BOARD="SM2S_RZG2UL";
        fi
}
