#!/bin/sh
set -eu
wait-for-it "$PG_HOST:5432"
bin/rails db:migrate
exec bin/rails server
