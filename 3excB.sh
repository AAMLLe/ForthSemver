#!/bin/bash
# execute using backticks
git status

git checkout -b master
git tag -d `git tag | grep -E '.'`
rm CHANGELOG.md

head .git/COMMIT_EDITMSG
head .git/config
echo `npm run releaseTh`

commit_files() {
	ls -la
  # git checkout -b master
  git add CHANGELOG.md
  git add package.json
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER [skip ci]"
  git status
}
git rm -r --cached node_modules
# git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed [skip ci] "
commit_files
git push --set-upstream origin master
git push --follow-tags origin master
echo `chandler push`
