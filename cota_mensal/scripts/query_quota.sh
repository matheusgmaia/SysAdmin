FILE_LP_SETTING="/home/matheusgm/Documentos/ADM-SISTEMAS/SysAdmin/cota_mensal/quota_settings.txt"
echo "------Consulta de quota de impressão------"
echo "Regex: "
function query()
{
    echo "`cat $FILE_LP_SETTING | grep $1 | awk '{print "PESSOA: ",$1, "QUOTA:", $2}'`"
}

cat $FILE_NAME | while read LINE
do
    query $LINE
done