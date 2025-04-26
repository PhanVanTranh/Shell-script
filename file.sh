#!/bin/bash

# Khai bao file
file_input="$1"
file_output="$2"

#Kiem tra file co ton tai khong
if [ ! -f "$file_input" ]; then
  echo "file input khong ton tai"
  exit
fi

# Doc mang tu file
read -r -a arr < "$file_input"

#Lay so phan tu mang
n=${#arr[@]}

#Sap xep tang dan
for (( i = 0; i <= n; i++)); do
  for (( j = i + 1; j < n; j++)); do
      if (( ${arr[i]} > ${arr[j]} )); then
           temp=${arr[i]}
           ${arr[i]}=${arr[j]}
           ${arr[j]}=temp
      fi
  done
done

echo "${arr[@]} " > $"file_output"
