#!/bin/bash
FILE_LP_SETTING="/home/matheusgm/Documentos/ADM-SISTEMAS/SysAdmin/cota_mensal/quota_settings.txt"
cat $FILE_LP_SETTING | while read LINE
do
    NAME=`echo $LINE | awk '{print $1}'`    
    CURRENT=`echo $LINE | awk '{print $2}'`
    NEW=`expr $CURRENT '+' 30`
    echo $NEW
    sed -i "/$NAME/ s/$CURRENT/$NEW/g" $FILE_LP_SETTING
done
