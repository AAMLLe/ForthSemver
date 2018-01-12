#!/bin/bash
# execute using backticks
git status
<<<<<<< HEAD
git checkout -b master
rm CHANGELOG.md
=======

>>>>>>> 2820f555d80961972446606e2f5dbe75860c0ea4
echo `npm run releaseTh`

commit_files() {
	ls -la
  # git checkout -b master
  git add CHANGELOG.md
  git add package.json
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER [skip ci]"
  git status
}
git rm -r --cached node_modules/
# git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed [skip ci] "
commit_files
git push -fq origin master > /dev/null
git push --follow-tags origin master
<<<<<<< HEAD
echo `chandler push`
=======
echo `chandler push`
>>>>>>> 2820f555d80961972446606e2f5dbe75860c0ea4
