#!/bin/sh
set -e

case "$1" in
  "sh" ) exec "bash";;
  "--start" )
    yarn
    exec yarn nuxt;;
  "--build" )
    exec yarn build;;
  * ) exec "$@";;
esac
