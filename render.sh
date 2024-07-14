#!/usr/bin/env bash
set -Eeuo pipefail

quarto render tbl-cross-reprex-md.qmd > render.out 2>&1
