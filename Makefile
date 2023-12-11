include $(TOPDIR)/rules.mk

PKG_NAME:=libi2c-user
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

CMAKE_INSTALL:=1

define Package/libi2c-user
  SECTION:=base
  CATEGORY:=Libraries
  TITLE:=libi2c-user library
  DEPENDS:=+kmod-i2c-core
endef

define Package/libi2c-user/description
  libi2c-user library
endef

define Package/libi2c-user/install
		$(INSTALL_DIR) $(1)/usr/lib
		$(CP) $(PKG_BUILD_DIR)/libi2c-user.so $(1)/usr/lib
endef

define Build/InstallDev
		$(INSTALL_DIR) $(1)/usr/include/libi2c-user
		$(CP) $(PKG_BUILD_DIR)/*.h $(1)/usr/include/libi2c-user/
		$(INSTALL_DIR) $(1)/usr/lib
		$(CP) $(PKG_BUILD_DIR)/libi2c-user.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libi2c-user))