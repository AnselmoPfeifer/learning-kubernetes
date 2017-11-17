#!/bin/bash

function selectApp() {
    if  [ $1 == 'java' ]; then 
        sh java.sh

    elif [ $1 == 'wordpress' ]; then
        sh wordpress.sh
    fi
}
selectApp $1