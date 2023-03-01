#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams,games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  TEAM_ID=$($PSQL "select team_id from teams where name = '$WINNER'")
  if [[ $WINNER != winner ]]
  then
    if [[ -z $TEAM_ID ]]
    then
      INSERT_TEAM=$($PSQL "insert into teams(name) values('$WINNER')")
      if [[ $INSERT_TEAM == "INSERT 0 1" ]]
      then
        echo Inserted into teams, $WINNER
      fi
    fi
  fi
  TEAMS_ID=$($PSQL "select team_id from teams where name = '$OPPONENT'")
  if [[ $OPPONENT != opponent ]]
  then
    if [[ -z $TEAMS_ID ]]
    then
      INSERT_TEAMS=$($PSQL "insert into teams(name) values('$OPPONENT')")
      if [[ $INSERT_TEAMS == "INSERT 0 1" ]]
      then
        echo Inserted into teams, $OPPONENT
      fi
    fi
  fi

  WIN_ID=$($PSQL "select team_id from teams where name = '$WINNER'")
  OPP_ID=$($PSQL "select team_id from teams where name = '$OPPONENT'")

  if [[ $YEAR != year ]]
  then
    INSERT_GAME_RESULT=$($PSQL "insert into games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) values($YEAR,'$ROUND',$WIN_ID,$OPP_ID,$WINNER_GOALS,$OPPONENT_GOALS)")
    if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
    then
      echo Inserted into games, $YEAR
    fi
  fi

done

