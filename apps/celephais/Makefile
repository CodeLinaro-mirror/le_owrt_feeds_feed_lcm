include $(TOPDIR)/rules.mk

PKG_NAME:=celephais
PKG_VERSION:=v1.2.0
SHORT_DESCRIPTION:= Celephais is a repository application for OCI bundles for use with the Prpl LCM

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/lcm/applications/celephais.git
PKG_SOURCE_VERSION:=ff9171ab8c74db065bdb6ffb0a100007a4365d85

PKG_MAINTAINER:=Consult Red <info@consult.red>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=celephais

PKG_RELEASE:=1
PKG_BUILD_DEPENDS += libcelephais libarchive libsahtrace

CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

CMAKE_OPTIONS += -DCMAKE_C_FLAGS=-I$(STAGING_DIR)/usr/include/celephais

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Life Cycle Management (LCM)
  TITLE:=OCI Bundle Repository for PrplLCM
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxo
  DEPENDS += +libamxm
  DEPENDS += +libsahtrace
  DEPENDS += +libcelephais
  DEPENDS += +amxrt
  DEPENDS += +libarchive
endef

define Package/$(PKG_NAME)/description
	$(SHORT_DESCRIPTION)
endef

define SAHInit/Install
	install -d ${PKG_INSTALL_DIR}/etc/rc.d/
	install -d ${PKG_INSTALL_DIR}/etc/init.d/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/scripts/celephais ${PKG_INSTALL_DIR}/etc/init.d/
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/S90$(COMPONENT)
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/K90$(COMPONENT)
endef

define Build/Install
	$(call Build/Install/Default, install)

	$(call SAHInit/Install)
endef


define Package/$(PKG_NAME)/install
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
	$(INSTALL_DIR) $(1)/usr/bin/
	$(LN) -r $(1)/usr/bin/amxrt $(1)/usr/bin/celephais
endef

$(eval $(call BuildPackage,$(PKG_NAME)))

