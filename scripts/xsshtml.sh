#! /bin/bash

if [ $EUID != 0 ]
then
  echo "Please run this script as root so as to see all details! Better run with sudo."
  exit 1
fi


#Creating a directory if it doesn't exist to store reports first, for easy maintenance.


if [ ! -d ~/html_repo ]
then
  mkdir ~/html_repo
fi
	html="~/html_repo/xss_report.html"
	email_add="test411062@gmail.com"
	#for i in `ls /home`; do sudo du -sh /home/$i/* | sort -nr | grep G; done > /tmp/dir.txt

#Creating HTML Reports

echo "<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">" >> $html
echo "<html>" >> $html
echo "<link rel="stylesheet" href="https://unpkg.com/purecss@0.6.2/build/pure-min.css">" >> $html
echo "<body>" >> $html
echo "<fieldset>" >> $html
echo "<center>" >> $html
echo "<h2>XSS Report</h2>" >> $html
echo "<h3><legend>Made With <3 by Group 10</legend></h3>" >> $html
echo "</center>" >> $html
echo "<!DOCTYPE html>" >> $html
echo "<html>" >> $html
echo "<body>" >> $html
echo "<h3>[-] Vulnerable To XSS : </h3><br>" >> $html
for i in $(cat $1); do
echo "<p><a href="$i">$i</a></p><br>" >> $html ;done
echo "</body>" >> $html

