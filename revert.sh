#!/bin/bash

expression='s/^\\input/%&/g'

[ -z "$1" ] && sed "$expression" || sed -i "$expression" "$1"
