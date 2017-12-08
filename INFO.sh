#!/bin/bash

source /pkgscripts/include/pkg_util.sh

package="libimobiledevice"
version="1.0.0001"
os_min_ver="6.1.3-15152"
displayname="libimobiledevice"
maintainer="libimobiledevice"
maintainer_url="http://www.libimobiledevice.org"
distributor="bxxxjxxg"
distributor_url="https://github.com/bxxxjxxg/libimobiledevice"
arch="$(pkg_get_unified_platform)"
description="libimobiledevice is a software library that talks the protocols to support iPhone, iPod Touch and iPad devices on Linux without the need for jailbreaking."
[ "$(caller)" != "0 NULL" ] && return 0
pkg_dump_info
