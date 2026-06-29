#!../../bin/linux-x86_64/upwt

#- You may have to change upwt to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/upwt.dbd"
upwt_registerRecordDeviceDriver pdbbase

## Load record instances
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
