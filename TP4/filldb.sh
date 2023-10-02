#!/bin/bash
set -x
mysql -v -u root -p'foo' -h 127.0.0.1 --port=3307 < data.sql
