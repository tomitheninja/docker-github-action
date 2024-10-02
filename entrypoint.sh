#!/bin/bash

main() {
    if [[ $# == 0 ]]; then
        echo "Need action argument"; exit 1
    fi

    COMMAND="$1"
    case $COMMAND in
        build) build "${@:2}";;
        test) test "${@:2}";;
        *) echo 'Unknown command' && exit 1;;
    esac
}

build() {
    npm run build
}

test() {
    npm run test
}

main "$@"