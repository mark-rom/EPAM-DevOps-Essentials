while true; do
    read -r command
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
