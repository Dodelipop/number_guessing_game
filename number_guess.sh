#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# fix: Correct the greeting for returning users, including the number of games and best game
echo -e "\nEnter your username:"
read USERNAME

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

  # Fix: Properly greet users with the correct number of games played and best game
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
