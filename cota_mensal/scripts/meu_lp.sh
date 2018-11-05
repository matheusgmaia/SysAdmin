FILE_LP_SETTING="/home/matheusgm/Documentos/ADM-SISTEMAS/SysAdmin/cota_mensal/quota_settings.txt"
echo "------IMPRESSÃO------"
function remove()
{
    echo "`cat $FILE_LP_SETTING | grep $1 | awk '{print "PESSOA: ",$1, "QUOTA:", $2}'`"
}
LINE_PAG_NUM=`wc -l $1`
CHAR_PAG_NUM=`wc -c $1`

PAG_LINE_CONST=60
PAG_CHAR_CONST=3600

LINE_PAG_NUM=$(expr "$LINE_PAG_NUM" / "$PAG_LINE_CONST")
CHAR_PAG_NUM=$(expr "$CHAR_PAG_NUM" / "$PAG_CHAR_CONST")

echo "$LINE_PAG_NUM"
echo "$CHAR_PAG_NUM"
echo -e "$LINE_PAG_NUM \n $CHAR_PAG_NUM" | sort -n -r | head -n 1
