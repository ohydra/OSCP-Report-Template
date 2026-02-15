#!/bin/bash
docker run --rm -it --name report-generator -v $(pwd)/output:/root/report-generator/output -v $(pwd)/src:/root/report-generator/src report-generator
