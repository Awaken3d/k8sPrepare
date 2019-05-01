#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o xtrace

cd /tmp
wget https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh
chmod +x goinstall.sh
bash goinstall.sh
cd ~

if [[ -x $(git version) ]]
then
	apt install -y git
fi

git clone https://github.com/Awaken3d/k8sControllerTesting.git

echo "all done"
