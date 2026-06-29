TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = upwt
# upwt.dbd will be created and installed
DBD += upwt.dbd

# upwt.dbd will be made up from these files:
upwt_DBD += base.dbd

# Include dbd files from all support applications:
#upwt_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#upwt_LIBS += xxx

# upwt_registerRecordDeviceDriver.cpp derives from upwt.dbd
upwt_SRCS += upwt_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
upwt_SRCS_DEFAULT += upwtMain.cpp
upwt_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#upwt_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
upwt_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

