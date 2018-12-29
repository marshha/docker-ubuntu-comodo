#!/bin/sh
cd /tmp/
wget http://www.eicar.org/download/eicar.com.txt
wget http://www.eicar.org/download/eicarcom2.zip
/opt/COMODO/cmdscan -s /tmp/eicar.com.txt
/opt/COMODO/cmdscan -s /tmp/eicarcom2.zip

