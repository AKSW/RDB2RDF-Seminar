#!/bin/bash
../run-sparqlify.sh 2 > out2.nt
rapper -i ntriples out2.nt -o turtle > out2.ttl

