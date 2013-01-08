#!/bin/bash

source config.ini

apt-get install openjdk-7-jdk maven

git clone git://github.com/AKSW/Sparqlify.git $sparqlifySrc
cd $sparqlifySrc
git pull
git checkout devel

cd $sparqlifySrc
mvn clean install

cd sparqlify-core
mvn assembly:assembly


