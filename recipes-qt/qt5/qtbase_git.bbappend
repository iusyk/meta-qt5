PACKAGECONFIG_GL = "${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'gles2 eglfs', 'no-opengl', d)}"

PACKAGECONFIG += "eglfs gl gles2 linuxfb kms libinput"
PACKAGECONFIG[vsp2] = "-feature-vsp2,-no-feature-vsp2,v4l-utils,libv4l"
PACKAGECONFIG += "vsp2"
PACKAGECONFIG[gbm] = "-gbm,-no-gbm,libgbm"
PACKAGECONFIG += "gbm"

PACKAGECONFIG_remove += "openssl pcre"