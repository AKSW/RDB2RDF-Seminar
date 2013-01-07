#!/bin/sh

if [ "$USER" != "root" ]; then
    echo "Must be run as root"
    exit 1
fi

apt-get install postgresql
su postgres -c 'dropdb task1'
su postgres -c 'createdb task1'
su postgres -c 'psql -d task1 -f task1.sql'

su postgres -c 'dropdb task2'
su postgres -c 'createdb task2'
su postgres -c 'psql -d task2 -f task1.sql'
su postgres -c 'psql -d task2 -f task2.sql'

su postgres -c 'dropdb task3'
su postgres -c 'createdb task3'
su postgres -c 'psql -d task3 -f task1.sql'
su postgres -c 'psql -d task3 -f task2.sql'
su postgres -c 'psql -d task3 -f task3.sql'


