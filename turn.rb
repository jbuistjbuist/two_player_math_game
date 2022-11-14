class Turn 

  @@turns = 0 
  attr_reader :current_player

  def initialize(player_1, player_2)
    puts "----- NEW TURN ----- \n \n"

    @@turns += 1
    if (@@turns % 2 == 0)
      @current_player = player_1
    else 
      @current_player = player_2
    end
  end

end
