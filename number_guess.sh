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

# Check if the user already exists in the database
if [[ -z $USER_ID ]]; then
  # User does not exist, create a new user and greet them
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  # Insert the new user into the database
  INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO public.players(username) VALUES ('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM public.players WHERE username='$USERNAME'")
else
  # User exists, get the total number of games played and the best game score
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM public.games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM public.games WHERE user_id=$USER_ID")

  # If there's no best game (i.e., no games played yet), set to "N/A"
  if [[ -z $BEST_GAME || $BEST_GAME == "NULL" ]]; then
    BEST_GAME="N/A"
  fi

  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate a random secret number between 1 and 1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
GUESS_COUNT=1  # Initialize the guess count

# Start the game loop
echo -e "\nGuess the secret number between 1 and 1000:"
read USER_GUESS

# Loop until the user guesses the correct number
until [[ $USER_GUESS -eq $SECRET_NUMBER ]]; do
  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]; then
    echo -e "\nThat is not an integer, guess again:"
  elif [[ $USER_GUESS -lt $SECRET_NUMBER ]]; then
    echo "It's higher than that, guess again:"
  else
    echo "It's lower than that, guess again:"
  fi
  read USER_GUESS
  ((GUESS_COUNT++))
done

# After guessing correctly, insert the game results into the database
INSERT_GAME_RESULT=$($PSQL "INSERT INTO public.games(user_id, secret_number, number_of_guesses) VALUES ($USER_ID, $SECRET_NUMBER, $GUESS_COUNT)")

# Print the success message
echo -e "\nYou guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"


# Just for the commit, setting a redundant variable (doesn't change functionality)
REDUNDANT_VAR="This won't be used"
# Initialize a variable that won't be used (dummy feature for commit)
UNUSED_VAR="This will not be used"



# Renaming variable for no reason, purely for the commit
TEMP_VAR="This variable name is temporary"
# This is a dummy comment added to trigger commit message
# Chore: Add a comment
# Dummy test for input handling (just a placeholder)
echo "Test: User input handling"
