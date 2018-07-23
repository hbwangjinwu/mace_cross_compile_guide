CXX = arm-hisiv400-linux-gnueabi-g++
CC = arm-hisiv400-linux-gnueabi-gcc
AR = arm-hisiv400-linux-gnueabi-ar cqs

TOP_DIR = ..

TARGET_EXE=demo

####################face_detect source file################### 
CXX_SOURCE += unit_test.cpp 
####################head file###################
DEP_INC_DIR += -I$(TOP_DIR)/include/
DEP_INC_DIR += -I$(TOP_DIR)/include/mace
DEP_INC_DIR += -I$(TOP_DIR)/include/protobuf3.4.0 

####################ld flag###################
LDFLAGS+= $(TOP_DIR)/library/mace_cpu/libmace.so 
LDFLAGS+= $(TOP_DIR)/library/mace_cpu/libmace_proto.a
LDFLAGS+= $(TOP_DIR)/library/protobuf3.4.0/libprotobuf.a  
LDFLAGS+=-fopenmp  -lm -pthread -lrt -ldl 

OBJ_CPP := $(patsubst %.cpp, %.o, $(CXX_SOURCE))

DEFINE_MACRO := 

CPPFLAGS := -std=c++11 
CPPFLAGS += $(DEP_INC_DIR) $(DEFINE_MACRO)  

$(TARGET_EXE):$(OBJ_CPP)
	$(CXX) -o $@ $^ $(LDFLAGS) -mcpu=cortex-a7 -mfloat-abi=softfp -mfpu=neon-vfpv4 

%.o : %.cpp
	$(CXX) $(CPPFLAGS) -O3 -o $@ -c $<  -mcpu=cortex-a7 -mfloat-abi=softfp -mfpu=neon-vfpv4

clean:
	rm -rf $(OBJ_CPP) $(TARGET_EXE)
