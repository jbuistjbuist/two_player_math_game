class Player 
  @@player_num = 0 #so we know if its initialized as player one or two

  attr_reader :name, :lives, :id #read access to name and lives

  def initialize
    @@player_num += 1
    @id = @@player_num
    puts "Please choose a name for player #{@@player_num} \n"
    @name = gets.chomp
    @lives = 3
  end

  def adjust_life(boolean)
    if (boolean == false)
      @lives -= 1
    end
  end

end
