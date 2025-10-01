#!/bin/bash

for file in files/*; do
    [ -f "$file" ] || continue  # 실제로 존재하는 파일인지 확인

    filename=$(basename "$file")
    first_char=$(echo "${filename:0:1}" | tr 'A-Z' 'a-z')

    if [[ $first_char =~ [a-z] ]]; then
        mv "$file" "$first_char/"
    else
        echo "⚠️  $filename 파일명이 알파벳으로 시작하지 않음."
    fi
done
