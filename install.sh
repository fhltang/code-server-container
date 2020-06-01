#/bin/sh

# Modified commands from https://medium.com/google-cloud/how-to-run-visual-studio-code-in-google-cloud-shell-354d125d5748

VERSION=$(wget -O - https://api.github.com/repos/cdr/code-server/releases/latest 2> /dev/null | grep -oP '"tag_name": "v\K(.*)(?=")')
URL="https://github.com/cdr/code-server/releases/download/v${VERSION}/code-server-${VERSION}-linux-x86_64.tar.gz"
wget -O - "${URL}" 2> /dev/null \
     | tar -xvzf -

ln -s "code-server-${VERSION}-linux-x86_64" code-server
