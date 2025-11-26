#!/bin/bash


EXPECTED_OUTPUT_SNIPPET="ttttt eeeee  ssss"

ACTUAL_OUTPUT=$(echo "TEST" | ./ascii)

if [[ "$ACTUAL_OUTPUT" == *"$EXPECTED_OUTPUT_SNIPPET"* ]]; then
    echo "OK: ascii command passed."
else
    echo "NG: ascii command failed."
    exit 1
fi

if echo "!" | ./ascii 2> /dev/null; then

    echo "NG: failed to exit with error."
    exit 1
else
    echo "OK: failed as expected."
fi

echo "All tests passed."
exit 0
