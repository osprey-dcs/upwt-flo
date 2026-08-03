#!../../bin/linux-x86_64/upwt

#- You may have to change upwt to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/upwt.dbd"
upwt_registerRecordDeviceDriver pdbbase

## Initialize EtherIP driver infrastructure
# Syntax: drvEtherIP_init(stack_size, queue_size, direct_cup)
# - direct_cpu = 0 (standard/safe EPICS thread handling)
drvEtherIP_init(0, 0, 0)

## Define PLC connections
# Syntax: drvEtherIP_define_PLC("PLC_NAME", "IP_ADDRESS_OR_HOSTNAME", SLOT_NUMBER)
drvEtherIP_define_PLC("PLC_1", "192,168.1.10", 0)

## (Optional) Set custom scan rate update intervals for tags
# Syntax: EIP_set_scan_period(period_index, seconds)
# EIP_set_scan_period(1, 0.1) # Period 1 = 100ms
# EIP_set_scan_period(2, 0.5) # Period 2 = 500ms

## Load record instances
# dbLoadRecords("db/<plc.db>", "PLC=<PLC_NAME>")
dbLoadRecords("db/flo_aiao.db")
dbLoadRecords("db/flo_DAS1a.db")
dbLoadRecords("db/flo_DAS1b.db")
dbLoadRecords("db/flo_DAS2a.db")
dbLoadRecords("db/flo_DAS2b.db")
dbLoadRecords("db/flo_DASa.db")
dbLoadRecords("db/flo_log.db")
dbLoadRecords("db/flo_PLC.db")
dbLoadRecords("db/flo_stagp.db")
dbLoadRecords("db/flo_temp.db")
dbLoadRecords("db/flo_wdmon.db")
dbLoadRecords("db/sim.db")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=user"
