class Question 
  OPERATIONS = ['*', '+', '-', '/']

  def initialize(player)
    @player = player
    @num1 = Random.rand(1...21)
    @num2 = Random.rand(1...21)
    @operation = OPERATIONS[Random.rand(0...3)]
  end

  def ask_question
    puts "#{@player.name}: What is #{@num1} #{@operation} #{@num2}? \n"
    response = gets.chomp.to_i
    answer = eval("#{@num1} #{@operation} #{@num2}")

    puts "Correct answer: #{answer} \n \n"

    if answer == response 
      puts "Congratulations #{@player.name}! You are correct \n\n"
      return true
    else 
      puts "Oops! Wrong answer... \n\n"
      return false  
    end
  end

end
