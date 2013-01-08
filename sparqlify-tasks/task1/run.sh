#!/bin/bash
../run-sparqlify.sh 1 > out1.nt
rapper -i ntriples out1.nt -o turtle > out1.ttl

