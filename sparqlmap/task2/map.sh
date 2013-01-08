#!/bin/bash

SCRIPT=`readlink -f $0`
SCRIPTPATH=`dirname $SCRIPT`

if [ ${PWD} != $SCRIPTPATH  ]; then
        echo "run from the script dir (${SCRIPTPATH})"
        exit 1
fi 

java -jar ../sparqlmap/sparqlmap-0.6.1-SNAPSHOT-jar-with-dependencies.jar sparqlmap.dump -r2rmlfile mapping2.ttl -dburi jdbc:postgresql://localhost/task2 -dbuser postgres -dbpass postgres | sort  -o out2.nt

