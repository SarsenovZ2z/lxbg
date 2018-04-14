while : ;do
    PID=`ps axf | grep lxbg.sh | grep -v grep | awk '{print $1}'`
    if [ -z "$PID" ]; then
        break
    fi
    kill -9 $PID
    echo $PID
done
