#!/bin/bash

function usage {
    echo "./$(basename $0) -h --> shows usage"
    exit 1
}

get_param()
{
    while getopts ":n:" option
    do
        case ${option} in

            n) NAME="$OPTARG"
            ;;
            *) echo "Unknown argument: $1";
               usage
            ;;
        esac
    done
}

if [ $# -eq 2 ];
then
    get_param "$@"
else
    usage
fi


echo "Welcome $NAME."
now=$(date)
printf "Current date and time in Linux %s\n" "$now"
