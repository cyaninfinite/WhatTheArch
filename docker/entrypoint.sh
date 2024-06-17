#!/bin/sh

mkdocs build
echo "Starting docs server..."
mkdocs serve --dev-addr=0.0.0.0:8080
