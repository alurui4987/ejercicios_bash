#!/bin/bash

numero=5

while [ "$numero" -ge 1 ]; do
    echo "$numero"
    ((numero--))
done
