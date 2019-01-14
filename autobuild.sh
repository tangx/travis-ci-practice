#!/bin/bash
#

function build(){
    echo "autobuild build"
}

function pull(){
    echo "autobuild pull"
}

case $1 in
build) build ;;
pull) pull ;;
esac
