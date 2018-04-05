#!/bin/bash

rm -rf /home/*
git -C /home clone https://github.com/vbochet/computer-database.git
cd /home/computer-database
sed -i -e 's/127.0.0.1:3306/172.18.0.2:3306/g' src/main/resources/db.properties
mvn clean
mvn test
result=$?
if [[ $result -ne 0 ]] ; then 
  echo "Test failure"; exit $result 
fi
echo End of build sequence
