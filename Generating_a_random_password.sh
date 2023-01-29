
#!/bin/bash

# Script to generate a random password

# A sample Bash script, by omidneko

clear

echo "
#   _______  _______ _________ ______   _        _______  _        _______  _______    _________ _______ 
#  (  ___  )(       )\__   __/(  __  \ ( (    /|(  ____ \| \    /\(  ___  )(  ___  )   \__   __/(  ____ )
#  | (   ) || () () |   ) (   | (  \  )|  \  ( || (    \/|  \  / /| (   ) || (   ) |      ) (   | (    )|
#  | |   | || || || |   | |   | |   ) ||   \ | || (__    |  (_/ / | |   | || |   | |      | |   | (____)|
#  | |   | || |(_)| |   | |   | |   | || (\ \) ||  __)   |   _ (  | |   | || |   | |      | |   |     __)
#  | |   | || |   | |   | |   | |   ) || | \   || (      |  ( \ \ | |   | || |   | |      | |   | (\ (   
#  | (___) || )   ( |___) (___| (__/  )| )  \  || (____/\|  /  \ \| (___) || (___) | _ ___) (___| ) \ \__
#  (_______)|/     \|\_______/(______/ |/    )_)(_______/|_/    \/(_______)(_______)(_)\_______/|/   \__/
#

"


# Loading
for i in {o,m,i,d,n,e,k,o,:,G,e,n,e,r,a,t,i,n,g,_,a,_,r,a,n,d,o,m,_,p,a,s,s,w,o,r,d}
do
    echo -n $i
    sleep 0.05
done

echo


# Charachters to be used in the password
CHARACTERS="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*"

# Get the length of the character string
STR_LEN=${#CHARACTERS}

# Generate a random password using Bash's $RANDOM
PASSWORD=""

for ((i=1; i<=16; i++))
do
	POS=$(($RANDOM % $STR_LEN))
	PASSWORD="$PASSWORD${CHARACTERS:$POS:1}"
done

# Print the random password
echo "$PASSWORD"
