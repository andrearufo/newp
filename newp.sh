#!/bin/bash

echo 'In which folder do you want to install Wordpress?'
read folder

if [ -d "./$folder" ]
then
    echo "The folder $folder already exists."
    exit 1;
fi

# create a new folder
mkdir $folder

# enter in the folder
cd $folder

# get the latest Wordpress version
wget https://it.wordpress.org/latest-it_IT.tar.gz

# unzip it
tar xfz latest-it_IT.tar.gz

# move all in the root
mv wordpress/* ./

# delete the empty folder
rmdir ./wordpress/

# delete the archive
rm -f latest-it_IT.tar.gz

# the job is ended
echo "Hello Wordpress, you are in the $folder folder!"
