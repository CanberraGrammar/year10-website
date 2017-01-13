#!/bin/bash

# only proceed script when started not by pull request (PR)
if [ $TRAVIS_PULL_REQUEST == "true" ]; then
  echo "this is PR, exiting"
  exit 0
fi

# enable error reporting to the console
set -e

# build site with jekyll, by default to `_site' folder
bundle exec jekyll build

# cleanup
rm -rf ../year10.cgscomputing.com.gh-pages

#clone `gh-pages' branch of the repository using encrypted GH_TOKEN for authentication
git clone -b gh-pages https://${GH_TOKEN}@github.com/CanberraGrammar/year10-website.git ../year10.cgscomputing.com.gh-pages

ls

# delete all files in cloned copy (in case this commit has deleted files)
rm -rf ../year10.cgscomputing.com.gh-pages/*

# copy generated HTML site to `gh-pages' branch
cp -rf _site/* ../year10.cgscomputing.com.gh-pages

# commit and push generated content to `gh-pages' branch
# since repository was cloned in write mode with token auth - we can push there
cd ../year10.cgscomputing.com.gh-pages
git config user.email "cgscomputing@cgs.act.edu.au"
git config user.name "CGSComputing"
git add -A .
git commit -a -m "Travis #$TRAVIS_BUILD_NUMBER"
git push --quiet origin master > /dev/null 2>&1