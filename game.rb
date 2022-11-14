require './player'
require './question'
require './turn'


class Game 
  def initialize
    @winner = nil
  end

  def play 
    player_1 = Player.new
    player_2 = Player.new

    while !@winner
      current_player = Turn.new(player_1, player_2).current_player
      question = Question.new(current_player)
      result = question.ask_question
      current_player.adjust_life(result)

      if current_player.lives > 0
        puts "#{player_1.name}: #{player_1.lives}/3 vs #{player_2.name}: #{player_2.lives}/3 \n\n"
      else 
        id = current_player.id
        puts id
        id == 1 ? @winner = player_2 : @winner = player_1
        puts "#{@winner.name} wins with a score of #{@winner.lives}/3 \n\n"
        puts "-----GAME OVER----- \n\n"
        puts "Goodbye! \n\n"
      end
    end

    exit(true)
  end
end
