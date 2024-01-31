#!/bin/bash

# Number gusseing game

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Number to gess
NUMBER=$(( RANDOM % 1000 + 1 ))
GUESS_COUNT=0
USR_NUM=-1 # User Input

# Get user info
echo Enter your username:
read USERNAME

# Check if user registered
USR_NAME=$($PSQL "SELECT name FROM users WHERE name = '$USERNAME'")
if [[ -z $USR_NAME ]] # If user not registered
then
  INSERT_USR=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')") # Register user in DB and welcome him
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else # If user registered welcome him back and show his stats
  USR_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")
  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id = '$USR_ID'")
  BEST_GAMED=$($PSQL "SELECT MIN(guess_count) FROM games WHERE user_id = '$USR_ID'")
  echo "Welcome back, $USR_NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAMED guesses."
fi

echo "Guess the secret number between 1 and 1000:"

# Game loop
until [ $NUMBER == $USR_NUM ]
do
  read USR_NUM # Get user input
  if [[ $USR_NUM =~ ^[0-9]+$ ]] # Check if user input is an integer
  then  
    if [[ $USR_NUM -lt $NUMBER ]] # Check if user input is lower than the secret number
    then
      echo It\'s higher than that, guess again:
    elif [[ $USR_NUM -gt $NUMBER ]] # Check if user input is higher than the secret number
    then
      echo It\'s lower than that, guess again:
    fi
  else
    echo That is not an integer, guess again:
  fi
  ((GUESS_COUNT++)) # Increment guess count
done

# Insert game data into DB
USR_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")
INSERT_GAME=$($PSQL "INSERT INTO games(user_id, guess_count) VALUES($USR_ID, $GUESS_COUNT)")

# Show game results
echo -e "You guessed it in $GUESS_COUNT tries. The secret number was $NUMBER. Nice job!"
