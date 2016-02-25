#!/bin/bash
echo "Starting Manifold installation"

mkdir /var/tmp/manifoldintstall
cd /var/tmp/manifoldintstall

curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u74-b02/jdk-8u74-linux-x64.rpm > jdk-8u74-linux-x64.rpm
yum -y install jdk-8u74-linux-x64.rpm

curl -X GET https://rpmhost.file.core.windows.net/rpm/rest-server-0.1-1.x86_64.rpm > rest-server-0.1-1.x86_64.rpm
yum -y install rest-server-0.1-1.x86_64.rpm

systemctl start rest-server
cd
rm -rf /var/tmp/manifoldinstall

echo "Manifold installation Complete"
