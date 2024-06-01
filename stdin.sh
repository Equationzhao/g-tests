#!/bin/bash
output="$(echo tests/test_data | g -term-width 200 --no-config --no-update --icons --statistic --stdin)"
echo "$output" | tail -n +2 | diff - <(tail -n +2 tests/stdin.stdout)
