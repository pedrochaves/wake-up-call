#!/bin/bash

#
# Wake Up Call (wuc)
# A small bash script that chooses a random song of the folder you specify
# as an argument. Defaults to the current folder (using pwd)
#
# Place an entry in your cron to execute this file every morning, and you have
# your wake up call!
# 
# Author: Pedro Chaves <http://github.com/pedrochaves>
# URL: http://github.com/pedrochaves/wake-up-call
#


main()
{
    if [ "$1" == "-h" ]
    then
        show_help

        exit 1
    else
        play_song $(get_folder_name $1)
        
        exit 0
    fi
}

show_help()
{
    echo -e
    echo -e "Wake Up Call (wuc) <http://github.com/pedrochaves/wake-up-call>"
    echo -e "Chooses a random song to wake you up in the morning :)"
    echo -e "Works with MP3, WAV and OGG formats"
    echo -e "USAGE: wuc /path/to/songs/"
    echo -e
    echo -e "OPTIONS"
    echo -e "-h: This text and usage info"
}

get_folder_name()
{
    if [ $1 ]
    then
        echo "$1"
    fi

    pwd
}

play_song()
{
    # Finding our file
    FILE=`find "${1}" -name "*.mp3" -o -name "*.wav" -o -name "*.ogg" | sort --random-sort | head -1`

    if [ ! -f "$FILE" ]
    then
        echo -e "Could not find a song! Sorry :("
        echo -e "If you want some help, wuc -h should do it."

        exit 1
    fi

    # If the mocp server is not running, run it
    if [ ! -f $HOME/.moc/pid ]
    then
        mocp -S
    fi

    # And finally, play our song and display some info about it
    mocp -l "$FILE"
}

main $1
