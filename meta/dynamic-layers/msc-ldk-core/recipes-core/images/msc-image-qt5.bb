# Copyright (C) 2022 AVNET Embedded, MSC Technologies GmbH

require msc-image-weston.bb
require ../../meta-renesas.git/meta-rz-common/include/core-image-renesas-base.inc
require ../../meta-renesas.git/meta-rz-common/dynamic-layers/qt5-layer/images/core-image-qt.bb

IMAGE_INSTALL_append += "\
         libgpiod libgpiod-tools \
        "
