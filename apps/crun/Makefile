include $(TOPDIR)/rules.mk

PKG_NAME:=crun
PKG_VERSION:=1.6
PKG_RELEASE:=$(AUTORELEASE)

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/containers/crun.git
PKG_SOURCE_DATE:=2022-09-07
PKG_SOURCE_VERSION:=1.6
PKG_MIRROR_HASH:=cd7d6fb4c58f73eff6060268d08a77404731f1cc913635add4a2e340d3c455af

PKG_FIXUP:=autoreconf

PKG_INSTALL:=1

PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=COPYING

include $(INCLUDE_DIR)/package.mk

define Package/crun
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=crun
  URL:=https://github.com/containers/crun
  DEPENDS:=+libseccomp +libcap +yajl
endef

define Package/crun/description
  A fast and low-memory footprint OCI Container Runtime fully written in C.
endef

CONFIGURE_ARGS += --enable-shared --disable-systemd

define Build/Prepare
	$(call Build/Prepare/Default)
	$(SED) '/#include <git-version.h>/d' $(PKG_BUILD_DIR)/src/crun.c
endef

define Build/Configure
	$(call Build/Configure/Default)
	
	$(SED) s'/VERSION .*/VERSION \"$(PKG_VERSION)\"/' $(PKG_BUILD_DIR)/config.h
	$(SED) s'/PACKAGE_STRING .*/PACKAGE_STRING \"$(PKG_NAME) $(PKG_VERSION)\"/' $(PKG_BUILD_DIR)/config.h
	$(SED) s'/PACKAGE_VERSION .*/PACKAGE_VERSION \"$(PKG_VERSION)\"/' $(PKG_BUILD_DIR)/config.h

	echo "#define GIT_VERSION \"$(PKG_SOURCE_VERSION)\"" >> $(PKG_BUILD_DIR)/config.h
endef

define Package/crun/install
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/crun $(1)/usr/bin/

	$(INSTALL_DIR) $(1)/usr/lib
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/libcrun.* $(1)/usr/lib/
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/lib
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/libcrun.* $(1)/usr/lib/

	$(INSTALL_DIR) $(1)/usr/include/crun
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/config.h $(1)/usr/include/crun
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/src/libcrun/container.h $(1)/usr/include/crun
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/src/libcrun/error.h $(1)/usr/include/crun
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/src/libcrun/status.h $(1)/usr/include/crun

	$(INSTALL_DIR) $(1)/usr/include/crun/libocispec
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/libocispec/src/json_common.h $(1)/usr/include/crun/libocispec/
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/libocispec/src/runtime_spec_schema_config*.h $(1)/usr/include/crun/libocispec/
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/libocispec/src/runtime_spec_schema_def*.h $(1)/usr/include/crun/libocispec/
endef

$(eval $(call BuildPackage,crun))
