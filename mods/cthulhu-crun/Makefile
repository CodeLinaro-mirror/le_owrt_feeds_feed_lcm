include $(TOPDIR)/rules.mk
 
PKG_NAME:=cthulhu-crun
PKG_VERSION:=v1.0.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=git@gitlab.com:prpl-foundation/lcm/modules/cthulhu-crun.git
PKG_SOURCE_VERSION:=ace3e2414457dc6ebdbebe7630abb2751839ba43

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
