# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]


## Release v4.0.0 - 2024-10-21(09:08:30 +0000)

### Other

- [cthulhu-lxc](https://gitlab.com/prpl-foundation/lcm/modules/cthulhu-lxc): Implement unprivileged containers
- [cthulhu](https://gitlab.com/prpl-foundation/lcm/applications/cthulhu): - [amx] Failing to restart processes with init scripts
- [cthulhu](https://gitlab.com/prpl-foundation/lcm/applications/cthulhu): Add support for cgroup v2 controllers
- [cthulhu](https://gitlab.com/prpl-foundation/lcm/applications/cthulhu): Implement unprivileged containers
- [cthulhu](https://gitlab.com/prpl-foundation/lcm/applications/cthulhu): Add option to keep overlayfs mounted when stopped
- [cthulhu](https://gitlab.com/prpl-foundation/lcm/applications/cthulhu): [Rlyeh] Refactor to have singular code paths for parsing the library of images
- [cthulhu](https://gitlab.com/prpl-foundation/lcm/applications/cthulhu): Cthulhu API validation
- [cthulhu](https://gitlab.com/prpl-foundation/lcm/applications/cthulhu): Allow unprivileged container without overlayfs
- [cthulhu](https://gitlab.com/prpl-foundation/lcm/applications/cthulhu): make default mount options of HostObjects configurable
- [cthulhu](https://gitlab.com/prpl-foundation/lcm/applications/cthulhu): Allow unprivileged when idmap and acls are not possible with overlayfs
- [cthulhu](https://gitlab.com/prpl-foundation/lcm/applications/cthulhu): modify tracezones
- [cthulhu](https://gitlab.com/prpl-foundation/lcm/applications/cthulhu): ExecutionUnit Resources constraints are not reboot persistent
- [cthulhu](https://gitlab.com/prpl-foundation/lcm/applications/cthulhu): initialize gid and uid variables
- [cthulhu](https://gitlab.com/prpl-foundation/lcm/applications/cthulhu): [prpl LCM] Execution Unit Resources Constraints values are not persistent after a reboot
- [libcthulhu](https://gitlab.com/prpl-foundation/lcm/libraries/libcthulhu): Implement unprivileged containers
- [libcthulhu](https://gitlab.com/prpl-foundation/lcm/libraries/libcthulhu): Add option to keep overlayfs mounted when stopped
- [libcthulhu](https://gitlab.com/prpl-foundation/lcm/libraries/libcthulhu): Cthulhu API validation
- [libcthulhu](https://gitlab.com/prpl-foundation/lcm/libraries/libcthulhu): make default mount options of HostObjects configurable
- [libcthulhu](https://gitlab.com/prpl-foundation/lcm/libraries/libcthulhu): modify tracezones
- [liblcm](https://gitlab.com/prpl-foundation/lcm/libraries/liblcm): Implement unprivileged containers
- [liblcm](https://gitlab.com/prpl-foundation/lcm/libraries/liblcm): Idmap layer wrongly removed on containers Uninstall
- [librlyeh](https://gitlab.com/prpl-foundation/lcm/libraries/librlyeh): [Rlyeh] Refactor to have singular code paths for parsing the library of images
- [librlyeh](https://gitlab.com/prpl-foundation/lcm/libraries/librlyeh): LCM librlyeh unit tests not executed
- [rlyeh](https://gitlab.com/prpl-foundation/lcm/applications/rlyeh): - [amx] Failing to restart processes with init scripts
- [rlyeh](https://gitlab.com/prpl-foundation/lcm/applications/rlyeh): [Rlyeh] Refactor to have singular code paths for parsing the library of images
- [timingila-cthulhu](https://gitlab.com/prpl-foundation/lcm/modules/timingila-cthulhu): Implement unprivileged containers
- [timingila-cthulhu](https://gitlab.com/prpl-foundation/lcm/modules/timingila-cthulhu): Cthulhu API validation
- [timingila-cthulhu](https://gitlab.com/prpl-foundation/lcm/modules/timingila-cthulhu): DUStateChange! event missing on Update()
- [timingila-rlyeh](https://gitlab.com/prpl-foundation/lcm/modules/timingila-rlyeh): Cthulhu API validation
- [timingila](https://gitlab.com/prpl-foundation/lcm/applications/timingila): - [amx] Failing to restart processes with init scripts
- [timingila](https://gitlab.com/prpl-foundation/lcm/applications/timingila): Implement unprivileged containers
- [timingila](https://gitlab.com/prpl-foundation/lcm/applications/timingila): Cthulhu API validation

## Release v3.7.0 - 2024-10-11(09:33:00 +0000)

### Other

- [cthulhu-plugin-usp](https://gitlab.com/prpl-foundation/lcm/plugins/cthulhu/cthulhu-plugin-usp): Add support for USP Role Based Access Control (RBAC)

## Release v3.5.2 - 2024-08-26(21:35:04 +0000)

## Release v3.5.1 - 2024-08-06(14:38:53 +0000)

## Release v3.5.0 - 2024-08-02(20:02:14 +0000)

### Other

- [cthulhu-lxc](https://gitlab.com/prpl-foundation/lcm/modules/cthulhu-lxc): Add container execute command capability

## Release v3.4.0 - 2024-07-18(19:34:28 +0000)

### Removed

- [ckopeo](https://gitlab.com/soft.at.home/lcm/applications/ckopeo/): Component removed

### Other

- [cthulhu](https://gitlab.com/prpl-foundation/lcm/applications/cthulhu): Create USP Controller instance when a container added
- [cthulhu](https://gitlab.com/prpl-foundation/lcm/applications/cthulhu): cthulhu compilation warning
- [libcthulhu](https://gitlab.com/prpl-foundation/lcm/libraries/libcthulhu): Create USP Controller instance when a container added
- [liblcm](https://gitlab.com/prpl-foundation/lcm/libraries/liblcm): LCM container signature verification
- [librlyeh](https://gitlab.com/prpl-foundation/lcm/libraries/librlyeh): LCM container signature verification
- [rlyeh](https://gitlab.com/prpl-foundation/lcm/applications/rlyeh): [Rlyeh] Properly default blobs and images to /lcm
- [rlyeh](https://gitlab.com/prpl-foundation/lcm/applications/rlyeh): LCM container signature verification
- [timingila-cthulhu](https://gitlab.com/prpl-foundation/lcm/modules/timingila-cthulhu): Create USP Controller instance when a container added
- [timingila-rlyeh](https://gitlab.com/prpl-foundation/lcm/modules/timingila-rlyeh): Create USP Controller instance when a container added
- [timingila-rlyeh](https://gitlab.com/prpl-foundation/lcm/modules/timingila-rlyeh): DUStateChange! event missing on DU Uninstallation
- [timingila](https://gitlab.com/prpl-foundation/lcm/applications/timingila): Create USP Controller instance when a container added
- [timingila](https://gitlab.com/prpl-foundation/lcm/applications/timingila): Align datamodel definition with TR-181
- [timingila](https://gitlab.com/prpl-foundation/lcm/applications/timingila): DUStateChange! event sent out for wrong object

