#
# Copyright (C) 2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/VENTANA
  NAME:=Gateworks Ventana family
  PACKAGES:= \
	kmod-thermal-imx kmod-sky2 kmod-usb-chipidea kmod-usb-mxs-phy \
	kmod-sound-soc-imx kmod-sound-soc-imx-sgtl5000 \
	kobs-ng
endef

define Profile/VENTANA/Description
 The Gateworks Ventana family of products is based on the Freescale i.MX6Q SoC
 and offers a large variety of peripherals such as:

  * DDR3
  * NAND or SPI flash
  * multiple PCIe (with USB for Cellular modems)
  * Optional expansion for additional USB/PCI based periperhals
  * USB EHCI
  * USB OTG
  * HDMI Audio/Video in/out
  * Analog Video in/out
  * Analog Audio in/out
  * Gateworks System Controller
  * Optional GPS with PPS
  * Canbus
  * User GPIO
  * mSATA
endef

VENTANA_DTS:= \
	imx6dl-gw51xx \
	imx6dl-gw52xx \
	imx6dl-gw53xx \
	imx6q-gw5400-a \
	imx6q-gw54xx

$(eval $(call Profile,VENTANA))
