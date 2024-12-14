while true; do
    read command
    case $command in
        ls*)
            eval $command ;;
        pwd)
            eval $command ;;
        hi)
            echo "Hello $USER" ;;
        exit)
            eval $command ;;
    esac
done
