#! /bin/bash

figlet Stegno

read -p "Press 1 to imbed or press 2 to extract : " input

if [ $input == 1 ]
then
read -p "Enter secret file name : " file_name
read -p "Enter the message : " message
read -p " Enter image file : " image
read -p "enter password : " pwd

echo $message >> $file_name
if [ -f $image ]
then
steghide embed -cf $image -ef $file_name -p $pwd
else
echo "Your image file is not found "
fi
fi

if [ $input == 2 ]
then
read -p "Enter the image filename " image_file
read -p " Enter password " password

if [ -f $image_file ]
then
steghide extract -sf $image_file -p $password
else
echo " invalid " 
fi
fi
