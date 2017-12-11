#!/bin/sh

DIR=$(dirname "$0")

cd $DIR/public

if [[ $(git status -s) ]]
then
    echo "The gh-pages working directory in public is dirty. Please commit any pending changes."
    exit 1;
fi

cd ..

echo "Pushing publication to remote gh-pages branch"
git push origin gh-pages

echo "Deploying publication to Firebase Hosting"
firebase deploy
