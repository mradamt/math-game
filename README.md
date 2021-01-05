# math-game
2-player console math game to practice OOP


## Breakdown of classes
player: 
  * data:
    * id
    * name
    * lives left
  * method:
    * lose a life

question:
  * data:
    * initialize 2 random numbers and answer (equal to their sum)
  * methods:
    * generate question (requires the 2 random numbers)
    * check answer(input: player's_attempt, output: true/false)

printouts: 
  * methods: 
    * prompt player with a question and return the answer
    * put response to player's answer (correct / incorrect)
    * put number of lives left
    * put linebreak messages
    * put winning messages

main:
  * data: 
    * initialize with 2 players (instances of Player)
  * methods:
    * toggle current player
    * gameplay method (which calls for Question.new every loop, and lots of calls to Printouts)