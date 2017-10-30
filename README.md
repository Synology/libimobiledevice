libimobiledevice
======
A repacking project of libimobiledevice for NAS package

There are no packages available in NAS world for accessing Apple devices. And
several libimobiledevice packages in popular linux distributions also suffered
from communication errors due to compatiblities between new iOS and GnuTLS.
Therefore, this project comes to be an example for building libimobiledevice
with OpenSSL and being repacked into a NAS package.

## Requirement
* Python3
* Docker (libimobiledevice is built inner a container.)
* Synology Open Source Toolkit (for repacking them into a NAS package)

## Preparation
`$ mkdir /toolkit`
`$ cd /toolkit && git clone https://github.com/SynologyOpenSource/pkgscripts-ng`
`$ cd /toolkit/pkgscripts-ng && ./EnvDeploy -v 6.1 -p x64`

## Clone This Project
`$ mkdir -p /toolkit/source`
`$ cd /toolkit/source && git clone https://github.com/bxxxjxxg/libimobiledevice`

## Compile inner a docker container
`$ cd /toolkit/source/libimobiledevice && ./build.sh`

## Build NAS package (without CodeSign)
`$ /toolkit/pkgscripts-ng/PkgCreate.py -v 6.1 -p x64 -S libimobiledevice`
// Output Folder: /toolkit/result_spk/

## Reference
* How to Build Guide
  (https://gist.github.com/samrocketman/70dff6ebb18004fc37dc5e33c259a0fc)
* Synology Open Source (https://github.com/SynologyOpenSource)




