# Version of the LDD source code being used
LDD_VERSION = '3ca2f0a785b01a7a4039fe9f65d021ef1d129d23'
# Repository location for LDD source code
LDD_SITE = 'ssh://git@github.com/cu-ecen-aeld/assignment-7-shruthi-thallapally'
# Specify that the source should be retrieved via git
LDD_SITE_METHOD = git
# Indicate that this project uses git submodules
LDD_GIT_SUBMODULES = YES
# Define subdirectories that contain kernel modules for compilation
LDD_MODULE_SUBDIRS += scull
LDD_MODULE_SUBDIRS += misc-modules
# Instruct Buildroot to process the kernel module
$(eval $(kernel-module))
# Instruct Buildroot to process this package using the generic package infrastructure
$(eval $(generic-package))
