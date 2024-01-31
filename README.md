<img src="postgresql-original.svg" height="40" width="40"/>  <img src="bash-original.svg" height="40" width="40"/>

# Number Guessing Game

## Description

A simple number guessing game that runs in the terminal and saves user information. the use is asked to enter his name. if the user is new, a new record is created for him. if the user is not new, his record is loaded. The user is asked to guess a number between 1 and 1000. After each guess, the user is told if the guess is too high or too low. If the user guesses the number, the user is congratulated and the game ends.

## Motivation

This project was created to practice using PostgreSQL and Bash. It is from the FreeCodeCamp.org course [Relational Database](https://www.freecodecamp.org/learn/relational-database/build-a-number-guessing-game-project/build-a-number-guessing-game).

## Usage

### Setup
1. clone the repository and cd into it:
```bash
$ git clone https://github.com/YasinAlhadi/Number-Guessing-Game.git
```
2. run
```bash
$ psql -U postgres < number_guess.sql
```
3. run
```bash
$ ./number_guess.sh
```
### Playing the game
1. Enter your name
2. Enter a number between 1 and 1000.
3. If the number is too high, you will be told so.
4. If the number is too low, you will be told so.
5. If the number is correct, you will be congratulated and the game will end.

## Author
[Yasin Alhadi](https://www.twitter.com/yasin_elhadi)


## Technologies
- [PostgreSQL](https://www.postgresql.org/)
- [Bash](https://www.gnu.org/software/bash/)