#! bin/sh

echo -ne "Enter 'e' to encrypt and 'd' to decrypt a file : "
read c
if [ "$c" = "e" ];
then
   echo -ne "Enter the exact file name with extension to encrypt: "
   read f
   gpg -c $f
   echo "File $f has been encrypted"
   sleep 2
   echo "Deleting original file.."
   sleep 1
   rm -rf $f
   echo "Done!"
elif [ "$c" = "d" ];
then
  echo -ne "Enter the exact file name to decrypt: "
  read f
 if [[ ! -f $f ]];
  then
     echo "File does not exists!"
     exit 1
  else
  gpg -d $f.gpg > newfile
  echo "Done!"
  fi
else
  echo "Invalid choice!"
fi