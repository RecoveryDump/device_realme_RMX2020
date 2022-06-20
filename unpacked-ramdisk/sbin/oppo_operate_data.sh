#!/sbin/sh
para_list=$@

#operate date begin
start=$(date "+%Y-%m-%d %H:%M:%S")
echo "operate data begin: ${start}"

#You should add your sh operation in your own area you belongs to
#=====================OS Begin============================
#ifdef COLOROS_EDIT
#Bin.Wang@ROM.Framework,2019-09-02,Add for remove delete record for old-cert heytap apk in internal version, remove before 2019/09/04
rm -rf /data/oppo/coloros/dataupdate/manual_package_operation.xml
#endif COLOROS_EDIT
#=====================OS End==============================

#=====================Android Begin========================
#=====================Android End==========================

#=====================BSP Begin============================
#=====================BSP End==============================

#=====================Multi Begin==========================
#=====================Multi End============================

#=====================NetWork Begin========================
#=====================NetWork End==========================

#operate end
end=$(date "+%Y-%m-%d %H:%M:%S")
echo "operate data end: ${end}"

interval=$(($(($(date +%s -d "$end")-$(date +%s -d "$start")))))
echo "operate data cost: $interval seconds"