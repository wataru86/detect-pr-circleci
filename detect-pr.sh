#!/usr/bin/env bash

echo "detect pull request"

if [ "$CIRCLE_PULL_REQUEST" == true ]
then
    echo "pull request"
else
    echo "not pull request"
fi
