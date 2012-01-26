#!/bin/bash
# source openrave into the path given its install prefix
if test $# -eq 0; then
    echo 'need a path'
else
    export PATH=$1/bin:$PATH
    export LD_LIBRARY_PATH=$1/lib:$LD_LIBRARY_PATH
    export PYTHONPATH=`openrave-config --python-dir`:$PYTHONPATH
    export OCTAVE_PATH=`openrave-config --octave-dir`:$OCTAVE_PATH
    source `openrave-config --share-dir`/openrave_completion.bash
fi
