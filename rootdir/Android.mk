LOCAL_PATH:= $(call my-dir)
define add-rootdir-targets
$(foreach target,$(1), \
   $(eval include $(CLEAR_VARS)) \
   $(eval LOCAL_MODULE       := $(target)) \
   $(eval LOCAL_MODULE_CLASS := ETC) \
   $(eval LOCAL_SRC_FILES    := $(target)) \
   $(eval LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)) \
   $(eval include $(BUILD_PREBUILT)))
endef
$(call add-rootdir-targets, \
    fstab.mt6755 \
    init.connectivity.rc \
    init.common_svc.rc \
    init.epdg.rc \
    init.mt6755.modem.rc \
    init.mt6755.rc \
    init.mt6755.usb.rc \
    init.project.rc \
    init.recovery.mt6755.rc \
    init.rilproxy.rc \
    init.usb.configfs.rc \
    init.usb.rc \
    init.volte.rc \
    init.wfca.rc \
    init.mal.rc \
    ueventd.mt6755.rc)
