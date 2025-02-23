#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read USERNAME

# chore: Remove redundant and unused variables (e.g., unused database query)
if [[ -z $USERNAME ]]; then
  echo "Username cannot be empty. Exiting..."
  exit 1
fi

USER_ID=$($PSQL "SELECT user_id FROM public.players WHERE username='$USERNAME'")

if [[ -z $USER_ID ]]; then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO public.players(username) VALUES ('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM public.players WHERE username='$USERNAME'")
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM public.games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM public.games WHERE user_id=$USER_ID")

  if [[ -z $BEST_GAME || $BEST_GAME == "NULL" ]]; then
    BEST_GAME="N/A"
  fi

  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
