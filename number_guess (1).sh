#!/bin/bash
# This is a harmless comment to allow a commit
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

echo "Enter your username:"
read USERNAME

# Check if the username is longer than 22 characters
if [[ ${#USERNAME} -gt 22 ]]
then
    echo "Error: Username cannot be longer than 22 characters."
    exit 1
fi

# Find the username in the database
USERNAME_AVAIL=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE username= '$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(number_guesses) FROM users INNER JOIN games USING(user_id) WHERE username= '$USERNAME'")

# If username is not found in the database
if [[ -z $USERNAME_AVAIL ]]
then
    INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES ('$USERNAME')")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
else
    # If username exists in the database
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

RANDOM_NUM=$((1 + $RANDOM % 1000))
GUESS=1
echo "Guess the secret number between 1 and 1000:"

# Game loop to guess the number
while read NUM
do
    if [[ ! $NUM =~ ^[0-9]+$ ]]
    then
        echo "That is not an integer, guess again:"
    else
        if [[ $NUM -eq $RANDOM_NUM ]]
        then 
            break
        else 
            if [[ $NUM -gt $RANDOM_NUM ]]
            then
                echo -n "It's lower than that, guess again:"
            elif [[ $NUM -lt $RANDOM_NUM ]]
            then 
                echo -n "It's higher than that, guess again:"
            fi
        fi
    fi
    GUESS=$(( $GUESS + 1 ))
done

# After the user guesses the correct number
if [[ $GUESS == 1 ]]
then
    echo "You guessed it in $GUESS tries. The secret number was $RANDOM_NUM. Nice job!"
else 
    echo "You guessed it in $GUESS tries. The secret number was $RANDOM_NUM. Nice job!"
fi

# Record the game in the database
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
INSERT_GAME=$($PSQL "INSERT INTO games(number_guesses, user_id) VALUES($GUESS, $USER_ID)")
