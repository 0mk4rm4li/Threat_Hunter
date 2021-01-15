#!/bin/bash

dir=~/log_analysis/


cat $1 | grep --color "../../etc/passwd" > $dir/lfi.txt

cat $1 | grep --color "union" > $dir/sqli.txt


