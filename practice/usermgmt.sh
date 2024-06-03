#!/bin/bash

<< task
user management, create , change password, user delete.

task

create_user() {
echo "Please enter the user name to create"
read a
if id "$a"  &>/dev/null; then
	echo "Error. The username '$a' already exist, please choose different username."
	else
	
 read  -p "Enter the password for $a " password

 useradd -m -p "$password" "$a"
 echo "User account '$a' created successfully."	

fi
}
create_user

