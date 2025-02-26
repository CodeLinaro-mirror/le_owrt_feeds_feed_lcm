include $(TOPDIR)/rules.mk

PKG_NAME:=timingila-cthulhu
PKG_VERSION:=v3.0.2
SHORT_DESCRIPTION:=The module timingila-cthulhu provides cthulhu support as a container backend to timingila

PKG_SOURCE:=timingila-cthulhu-v3.0.2.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/lcm/modules/timingila-cthulhu/-/archive/v3.0.2
PKG_HASH:=393cb2e27e7dfd08d60a99a1b602733f6cb98e81434d30af8cd663a3fb279b37
PKG_BUILD_DIR:=$(BUILD_DIR)/timingila-cthulhu-v3.0.2
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE


PKG_RELEASE:=1
PKG_BUILD_DEPENDS += libcthulhu
PKG_BUILD_DEPENDS += liblcm

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Life Cycle Management (LCM)
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/lcm/modules/timingila-cthulhu
  DEPENDS += +libamxc
  DEPENDS += +libamxm
  DEPENDS += +libamxp
  DEPENDS += +libamxb
  DEPENDS += +libsahtrace
  DEPENDS += +cthulhu
  DEPENDS += +timingila
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	The module timingila-cthulhu provides cthulhu support as a container backend to timingila
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
endef

define Package/$(PKG_NAME)/install
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
	if [ -d ./files ]; then \
		$(CP) ./files/* $(1)/; \
	fi
	find $(1) -name *.a -exec rm {} +;
	find $(1) -name *.h -exec rm {} +;
	find $(1) -name *.pc -exec rm {} +;
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
