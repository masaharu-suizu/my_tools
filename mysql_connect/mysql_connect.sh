#!/usr/bin/env bash

script_dir=$(cd $(dirname $0); pwd)
db_option=$(perl ${script_dir}/parse_ini.pl)
mysql --defaults-extra-file=<(echo -e ${db_option})
