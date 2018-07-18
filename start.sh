#! /bin/sh

latest=$(curl https://registry.npmjs.org/augur-ui/ | jq --raw-output '.versions[."dist-tags".latest].dist.tarball' | sed 's/.*\///')
augurui=${1:-$latest}
wget https://registry.npmjs.org/augur-ui/-/$augurui
tar -xzf $augurui
rm $augurui
rm -rf /export/augur-ui/
mv package/build/ /export/augur-ui/
rm -rf package
