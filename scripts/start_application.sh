#!/bin/bash
set -e

docker pull 13riddhi/myspringapp

docker run -d -p 8080:8080 13riddhi/myspringapp


