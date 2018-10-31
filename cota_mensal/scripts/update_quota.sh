cat $1 | while read LINE
do
    awk '{print $0}'
done
