#!/bin/bash
set -x
if [ $TRAVIS_BRANCH == 'master' ] ; then
  # Initialize a new git repo in _site, and push it to our server.
  cd build
  git init
      
  git remote add deploy "deploy@pixore.albizures.com:/home/deploy/test/"
  git config user.name "Travis CI"
  git config user.email "albizures3601@gmail.com"
  
  git add .
  git commit -m "Deploy"
  git push --force deploy master
else
  echo "Not deploying, since this branch isn't master."
fi