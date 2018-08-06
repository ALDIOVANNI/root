#!/bin/sh
# invocation: write_even_numbered_file.sh
# description: will only write lines that start with an even number (and followed by a space)
# sed -n 's/^[0-9]*[02468] /&/w output_file_for_even_testing' <input_file_for_even_testing  # a good method
sed -n '/^[0-9]*[02468] / w output_file_for_even_testing' <input_file_for_even_testing  # even better method

