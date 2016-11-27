#!/bin/bash
#title           :mkscript.sh
#description     :Downloads the build dependencies
#author          :Yury
#date            :20161128
#version         :0.1    
#usage           :bash depdl.sh
#bash_version    :4.3.30(1)-release
#==============================================================================
declare -r chapter_url=http://www.linuxfromscratch.org/lfs/view/stable/chapter03/packages.html

wget URL || chapter_url

grep -Eo "\"(http[s]*|ftp)\:\/\/.+\.tar\.(xz|gz|bz2)\"" packages.html | tr -d \" > urls-to-download

wget -i urls-to-download

rm -f urls-to-download
