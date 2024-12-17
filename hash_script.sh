#!/bin/bash


if [[ $# -ne 1 || ! $1 =~ ^[0-9]{4}$ ]]; then
	echo "Usage: $0 <4-digit-integer>"
	exit 1
fi

input=$1

hash=$(echo -n "$input" | sha256sum | awk '{print $1}')

echo "Hash of $input: $hash"

echo "$hash" > hash_output.txt
