#!/bin/bash

echo "passwd dosyasinin dizin yolunu giriniz."
read passwd_yolu
echo "shadow dosyasinin dizin yolunu giriniz."
read shadow_yolu
echo "wordlist dosya uzantisini giriniz."
read wordlist_yolu


sudo unshadow $passwd_yolu  $shadow_yolu > unshadowed.txt

sudo john --wordlist=$wordlist_yolu  --format=crypt unshadowed.txt

sudo john --show unshadowed.txt
