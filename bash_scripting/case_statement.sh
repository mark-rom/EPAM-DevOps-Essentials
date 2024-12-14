case $command in
    start)
        echo "Service started" && sleep 9999
        ;;
    stop)
        # get PID of self and terminates
        kill $!
        echo "Service stopped"
        ;;
    restart)
        # run stop on self and then start again
        $0 stop && $0 start &
        ;;
    help)
        echo "Existing commands are: start, stop, restart, help)"
        ;;
    *)
        echo "Command $command doesn't exist, try help to list existing commands"
        ;;
esac