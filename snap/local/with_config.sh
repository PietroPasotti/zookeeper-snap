#!/bin/bash

set -e

"${SNAP}"/usr/bin/setpriv \
    --clear-groups \
    --reuid snap_daemon \
    --regid snap_daemon -- \
    "${SNAP}/${1}" --config "${SNAP_COMMON}"/conf $2
