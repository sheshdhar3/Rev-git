#!/bin/bash

 echo "Please enter a number"
      read a

 check_even_odd() {

   	if [ $(($a % 2 )) -eq 0 ]

	then

	  echo "$a is even number"

  else
	  echo "$a is odd number."

	fi
}

check_even_odd

