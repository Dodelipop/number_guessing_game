#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Ask for the username
echo -e "\nEnter your username:"
read USERNAME

# Check if the username is empty
if [[ -z $USERNAME ]]; then
  echo "Username cannot be empty. Exiting..."
  exit 1
fi

# Query the database to get user_id for the entered username
USER_ID=$($PSQL "SELECT user_id FROM public.players WHERE username='$USERNAME'")

