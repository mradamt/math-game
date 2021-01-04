# math-game
2-player console math game to practice OOP


## Breakdown of classes
player: 
  * variable id = 0
  * data:
    * initialize 3 'lives' and player id
  * method:
    * player id += 1

question:
  * data:
    * initialize 2 random numbers and placeholder for answer
  * methods:
    * generate question (requires the 2 random numbers)
    * calculate answer and store as answer
    * check answer(input: player's_attempt, output: true/false)

game: 
  * methods: 
    * generate math question
    * prompt player
    * assess input and update lives if necessary
    * end game if lives = 0 now, else toggle current_player
  * data: current_player

