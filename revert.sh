#!/bin/bash

expression='s/^\\input{secret}$/%&/g'

[ -z "$1" ] && sed "$expression" || sed -i "$expression" "$1"
