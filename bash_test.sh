#!/bin/bash

# set -x
# set -e

MATRIX_PARAMS_COMBINATIONS='            
'
cd helm_charts
for d in * ; do
    # echo $d
    MATRIX_PARAMS_COMBINATIONS+="{\"name\": \"${d}\" },"
done
v2=${MATRIX_PARAMS_COMBINATIONS%?} # removing last comma character