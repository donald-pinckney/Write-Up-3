#!/bin/bash

# Don't call this script yourself, this is for Travis CI!

cd "$(dirname "$0")"/..

testing/test_all.sh
exitCode=$?
#testing/.upload_results.sh

exit $exitCode
