#!/usr/bin/env bash

echo "detect pull request"

if ["$CI_PULL_REQUEST" == true]
then
    echo "pull request"
else
    echo "not pull request"
fi
