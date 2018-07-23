bazel build //mace:libmace.so --crosstool_top=//arm_compiler:toolchain --cpu=armv7  --sandbox_debug --copt="-march=armv7-a"  --copt="-mfpu=neon" --copt="-funsafe-math-optimizations" \
    --copt="-Wno-unused-function" \
    --copt="-Wno-sign-compare" \
    --copt="-ftree-vectorize"   \
     --copt="-fomit-frame-pointer" \
    --cxxopt="-fPIC"        \
    --cxxopt="-march=armv7-a"  \
    --cxxopt="-mfpu=neon"  
