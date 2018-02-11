#!/bin/sh

if ["$CI_PULL_REQUEST" == true]; then
    echo "pull request"
else
    echo "not pull request"
fi
