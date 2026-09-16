#!/bin/bash

EXPECTED="Hello, Test 1!"

OUTPUT=$(node -e "console.log(require('./src/app')('Test 1'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then
  echo "Test passed successfully!"
  exit 0
else
  echo "Test failed! Expected '$EXPECTED' but got '$OUTPUT'"
  exit 1
fi



