KERVER = "5.10"

FILESEXTRAPATHS_prepend := "${THISDIR}/${KERVER}:"

SRC_URI += " \
		file://sm2s.cfg \
"
KERNEL_URL = "git://github.com/sw-emb-anilpatel/linux-renesas.git;protocol=https"

BRANCH = "msc-renesas-develop"
SRCREV = "825c409e3003e425b69140105dfba8f978bd81d7"

KERNEL_VERSION_SANITY_SKIP="1"

KERNEL_DTC_FLAGS += "-@"

KERNEL_CONFIG_FRAGMENTS_append = " ${WORKDIR}/sm2s.cfg"
