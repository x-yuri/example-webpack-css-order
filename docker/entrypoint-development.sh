#!/bin/sh
set -eu
wait-for-it "$PG_HOST:5432"
exec bin/rails server --binding 0.0.0.0
