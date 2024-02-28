DESCRIPTION = "My description"
#To prevent the LICENSE field not set
LICENSE = "CLOSED"
PR = "r1"

SRC_URI = "file://images \
	   file://service \
           "

S = "${WORKDIR}/"

FILES:${PN} += "/home/root/*"
FILES:${PN} += "${sysconfdir}/firmware"
FILES:${PN} += "/lib/systemd/system/avnet.service"

# Specify the location of your systemd service file
SYSTEMD_SERVICE_${PN} = "avnet.service"
 
# Optionally, specify dependencies
SYSTEMD_AUTO_ENABLE_${PN} = "enable"
 

#inherit allarch

do_install() {
	install -d ${D}/home/root
       # install -d ${D}/home/root/images

	install -d ${D}/home/root
	install -d ${D}${sysconfdir}/firmware

	cp -r ${S}/images ${D}/home/root
	chmod -R 775 ${D}/home/root/images

	install -d ${D}/lib/systemd/system/
	cp -r ${S}/service/* ${D}/lib/systemd/system/
}
