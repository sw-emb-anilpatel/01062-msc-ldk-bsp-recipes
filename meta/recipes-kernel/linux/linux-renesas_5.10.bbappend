KERVER = "5.10"

FILESEXTRAPATHS_prepend := "${THISDIR}/${KERVER}:"

SRC_URI += " file://sm2s.cfg"

KERNEL_URL = "git://github.com/sw-emb-anilpatel/linux-renesas.git;protocol=https"
BRANCH = "msc-renesas_5.10.y-develop"
SRCREV = "9ab832ee71b2e96b560631c02a4de48d9edb06e5"

KERNEL_VERSION_SANITY_SKIP="1"

KERNEL_DTC_FLAGS += "-@"

KERNEL_CONFIG_FRAGMENTS_append = " ${WORKDIR}/sm2s.cfg"
