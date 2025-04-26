#!/bin/bash

kiemTra()
{
   n=$1
   if (( $n <= 1 )); then
      echo "$n khong phai so nguyen to"
      exit
   fi

   for (( i = 2; i*i <= n; i++ )); do
      if (( ($n % $i) == 0 )); then
         echo "$n khong phai so nguyen to"
      fi
   done
   echo "$n la so nguyen to"
}

read -p "Nhap so kiem tra: " n
kiemTra $n

