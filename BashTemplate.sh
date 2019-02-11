
#! /bin/sh
echo -ne "Enter the name of your bash script: "
read script
if [ -f $script.sh ];then 
   echo "File already exists!"
   exit 1
fi
echo "!# bin/sh" >> $script.sh
nano $script.sh
