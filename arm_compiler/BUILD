package(default_visibility = ["//visibility:public"])

cc_toolchain_suite(
    name = "toolchain",
    toolchains = {
        "armv7|compiler": ":cc-compiler-armv7",
        "k8|compiler": ":cc-compiler-local",
    },
)

filegroup(
    name = "empty",
    srcs = [],
)

filegroup(
    name = "arm_linux_all_files",
    srcs = [
        "@toolchain_target_armv7//:compiler_pieces",
    ],
)

cc_toolchain(
    name = "cc-compiler-local",
    all_files = ":empty",
    compiler_files = ":empty",
    cpu = "local",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":empty",
    objcopy_files = ":empty",
    static_runtime_libs = [":empty"],
    strip_files = ":empty",
    supports_param_files = 1,
)

cc_toolchain(
    name = "cc-compiler-armv7",
    all_files = ":arm_linux_all_files",
    compiler_files = ":arm_linux_all_files",
    cpu = "armv7",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":arm_linux_all_files",
    objcopy_files = "arm_linux_all_files",
    static_runtime_libs = [":empty"],
    strip_files = "arm_linux_all_files",
    supports_param_files = 1,
)



