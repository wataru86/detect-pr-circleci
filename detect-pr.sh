#!/usr/bin/env bash

echo "detect pull request"

if [ "$CIRCLE_PULL_REQUEST" == true ]
then
    echo "pull request"
else
    echo "not pull request"
fi

echo "$CI_PULL_REQUEST"
echo "$CI_PULL_REQUESTS"
echo "$CIRCLE_PULL_REQUEST"
echo "$CIRCLE_PULL_REQUESTS"
