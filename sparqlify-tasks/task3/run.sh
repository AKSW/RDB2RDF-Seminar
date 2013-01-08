#!/bin/bash
../run-sparqlify.sh 3 > out3.nt
rapper -i ntriples out3.nt -o turtle > out3.ttl

