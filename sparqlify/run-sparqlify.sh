#!/bin/bash

# Script for starting Sparqlify with a given task number:
#
# Usage Example:
#     ./run-sparqlify 1     <-- Runs the first task (searches for a file task1.sparlqlify)
#

source ../setup/config.ini
source config.ini

suffix="$1"


java -cp "$sparqlifySrc/sparqlify-core/target/sparqlify-jar-with-dependencies.jar" org.aksw.sparqlify.web.Main -h "$db_host" -u "$db_user" -p "$db_pass" -d "$db_name" -c "task{$suffix}.sparqlify"

