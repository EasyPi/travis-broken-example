#!/bin/bash

echo "script begin ($TRAVIS_PHP_VERSION $DB)"
phpunit Test.php
yaml2json .travis.yml > travis-$TRAVIS_PHP_VERSION-$DB.json
echo "script end"
