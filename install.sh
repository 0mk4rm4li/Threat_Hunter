#!/bin/bash

chmod +x threathunter.sh

mv scripts ~/scripts;

cd ~/scripts;

chmod +x *.sh;

git clone https://github.com/projectdiscovery/httpx.git; cd httpx/cmd/httpx; go build; mv httpx /usr/local/bin/; rm -r httpx

wget https://github.com/lc/gau/releases/download/v1.1.0/gau_1.1.0_linux_amd64.tar.gz; gzip -d gau_1.1.0_linux_amd64.tar.gz; tar xvf gau_1.1.0_linux_amd64.tar; rm LICENSE README.md; rm gau_1.1.0_linux_amd64.tar; mv gau /usr/bin/gau

wget https://github.com/tomnomnom/qsreplace/releases/download/v0.0.1/qsreplace-linux-amd64-0.0.1.tgz; gzip -d qsreplace-linux-amd64-0.0.1.tgz; tar xvf qsreplace-linux-amd64-0.0.1.tar; mv qsreplace /usr/local/bin/; rm qsreplace-linux-amd64-0.0.1.tar
