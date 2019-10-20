# Android device configuration for Misfit Vapor (mullet)

To initialize your local repository using the OMNIROM trees to build TWRP, use a command like this:

repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-8.1

export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch omni_<device>-eng; mka recoveryimage



## WIP

- Kernel needs to be replaced
- partitions need to be defined (see partitions.txt)
- Model Name needs to be defined in omni.mk
