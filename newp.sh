#!/bin/bash

echo 'In wich folder do you want to install Wordpress?'
read folder

if [ -d "./$folder" ]
then
    echo "The folder $folder already exists."
    exit 1;
fi

mkdir $folder

cd $folder

wget https://it.wordpress.org/latest-it_IT.tar.gz

tar xfz latest-it_IT.tar.gz

mv wordpress/* ./

rmdir ./wordpress/

rm -f latest-it_IT.tar.gz

echo "Hello Wordpress, you are in the $folder folder!"
