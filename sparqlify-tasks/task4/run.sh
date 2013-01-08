#!/bin/bash
../run-sparqlify.sh 4 > out4.nt
rapper -i ntriples out4.nt -o turtle > out4.ttl

