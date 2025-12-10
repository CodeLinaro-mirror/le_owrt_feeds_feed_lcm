include $(TOPDIR)/rules.mk
 
PKG_NAME:=cthulhu-crun
PKG_VERSION:=v1.0.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/lcm/modules/cthulhu-crun.git
PKG_MIRROR_HASH:=4d012d5555c6a9806051cfbb5b6db74035e47c3b22b03af4410740f573f0b395
PKG_SOURCE_VERSION:=9217496fb9e088db87da93d5021d0ef1be4a4972

PKG_MAINTAINER:=Consult Red <info@consult.red>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=crun

include $(INCLUDE_DIR)/package.mk

define Package/cthulhu-crun
  CATEGORY:=prpl Foundation
  SUBMENU:=Life Cycle Management (LCM)
  TITLE:=Cthulhu module for Crun
  DEPENDS+= +crun +libamxd +libamxo +libamxc +libamxj +libamxm +libamxp +libcthulhu +libsahtrace
endef

define Package/cthulhu-crun/description
  Module which provides Crun support as a backend for Cthulhu
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR))
endef

define Build/Install
	$(call Build/Install/Default, install DEST=$(PKG_INSTALL_DIR))
endef

define Package/cthulhu-crun/install
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
endef

$(eval $(call BuildPackage,cthulhu-crun))
