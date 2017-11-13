@player = []

  def menu
    puts "Let's play Rock, Paper, Scissors!"
    puts "Please enter your name:"
    playerName = gets.chomp.upcase
    @player.push(playerName)
    puts "#{playerName} is going to play Rock, Paper, Scissors against the computer. The first to win 3 rounds wins the game."
    game
  end

def game
  hands = ["ROCK", "PAPER", "SCISSORS"]
  playerWins = 0
  computerWins = 0
  playerChoice = ""


  while playerWins < 3 && computerWins < 3
    computerChoice = hands[rand(3)]
    until hands.include?(playerChoice)
      puts "#{@player} please choose ROCK, PAPER or SCISSORS"
      playerChoice = gets.chomp.upcase
    end

    if playerChoice == computerChoice
      puts "It's a tie! bother #{@player} and the computer chose #{playerChoice.upcase}"
    elsif (playerChoice == "rock" && computerChoice == "scissors") || (playerChoice == "scissors" && computerChoice == "paper") || (playerChoice == "paper" && computerChoice == "rock")
      playerWins += 1
      puts " #{@player} wins with a #{playerChoice} over #{computerChoice}"
    else
      computerWins += 1
      puts " The computer wins with a #{computerChoice} over #{@player}'s #{playerChoice}."
    end
    playerChoice = ""
    puts " The score stands at #{@player}: #{playerWins} and Computer with #{computerWins}"
end

  if computerWins == 3
    puts "You lose! Please try again! The final score was #{computerWins} to #{playerWins}"
  else
    puts "You are the winner! The final score is #{playerWins} to #{computerWins}"
  end

end
menu
