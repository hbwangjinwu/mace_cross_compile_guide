package(default_visibility = ['//visibility:public'])

filegroup(
  name = 'gcc',
  srcs = [
    'bin/arm-hisiv400-linux-gnueabi-gcc',
  ],
)

filegroup(
  name = 'ar',
  srcs = [
    'bin/arm-hisiv400-linux-gnueabi-ar',
  ],
)

filegroup(
  name = 'ld',
  srcs = [
    'bin/arm-hisiv400-linux-gnueabi-ld',
  ],
)

filegroup(
  name = 'nm',
  srcs = [
    'bin/arm-hisiv400-linux-gnueabi-nm',
  ],
)

filegroup(
  name = 'objcopy',
  srcs = [
    'bin/arm-hisiv400-linux-gnueabi-objcopy',
  ],
)

filegroup(
  name = 'objdump',
  srcs = [
    'bin/arm-hisiv400-linux-gnueabi-objdump',
  ],
)

filegroup(
  name = 'strip',
  srcs = [
    'bin/arm-hisiv400-linux-gnueabi-strip',
  ],
)

filegroup(
  name = 'as',
  srcs = [
    'bin/arm-hisiv400-linux-gnueabi-as',
  ],
)

filegroup(
  name = 'compiler_pieces',
  srcs = glob([
    'arm-hisiv400-linux-gnueabi/**',
    'libexec/**',
    'lib/gcc/arm-hisiv400-linux-gnueabi/**',
    'include/**',
  ]),
)

filegroup(
  name = 'compiler_components',
  srcs = [
    ':gcc',
    ':ar',
    ':ld',
    ':nm',
    ':objcopy',
    ':objdump',
    ':strip',
    ':as',
  ],
)
