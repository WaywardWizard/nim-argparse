#!/bin/bash
rm -rf docs/*
# Generate indexes, then documentation. --index:only doesn't work properly.
nim -p:src doc --project --index:on --outdir:docs src/argparse.nim > /dev/null || \
  nim -p:src doc --project --index:on --outdir:docs src/argparse.nim
