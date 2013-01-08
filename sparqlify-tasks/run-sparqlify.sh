#!/bin/bash

wd="$(dirname $0)"

# Script for starting Sparqlify with a given task number:
#
# Usage Example:
#     ./run-sparqlify 1     <-- Runs the first task (searches for a file task1.sparlqlify)
#

source "$wd/../setup/config.ini"
source "$wd/config.ini"

suffix="$1"
db_name="task$suffix"


sparqlify_config="$wd/task${suffix}/mapping${suffix}.sparqlify"

java -cp "$sparqlifySrc/sparqlify-core/target/sparqlify-core-jar-with-dependencies.jar" org.aksw.sparqlify.web.Main -h "$db_host" -u "$db_user" -p "$db_pass" -d "$db_name" -c "$sparqlify_config" -D -t 5

