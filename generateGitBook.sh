echo '> Checking out origin/master...'
git checkout master

echo '> Cleaning docs folder...'
rm -rf docs
mkdir docs

echo '> Installing GitBook Plugins...'
gitbook install ./gitbook

echo '> Generating GitBook...'
gitbook build ./gitbook ./docs

echo '> Commiting changes...'
git add ./docs
git commit -m "Updated static html"

echo '> Generation completed!'

git push origin

echo '> Publish completed!'
