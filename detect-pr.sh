#!/usr/bin/env bash

echo "detect pull request"

if [ -n "$CIRCLE_PULL_REQUEST" ]
then
    echo "pull request"
else
    echo "not pull request"
fi

echo "This is pull request !"
echo "tada no push"
