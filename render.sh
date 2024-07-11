#!/usr/bin/env bash
set -Eeuo pipefail

quarto render tbl-cross-reprex-md.qmd 2> render.out
