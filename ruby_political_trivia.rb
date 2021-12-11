# Defines trivia method
def trivia()
  puts "Welcome to Political Trivia"
  puts " "
  puts "Would you like to play US trivia or World trivia?"
  puts "Enter u or w"

# US trivia
  choice = $stdin.gets.chomp
# Selected type of triva
  if choice == "u" || choice == "U"
# First question
    puts "Who is the current Vice President of the United States of America?"
    puts "a - Barack Obama"
    puts "b - Kamala Harris"
    puts "c - Joe Biden"
    puts "d - Al Gore"

    puts "---"
    vp = $stdin.gets.chomp
    puts "---"

    if vp == "B" || vp == "b"
      puts "Correct, Kamala Harris is the current VP of the USA."
      answer = 1
    elsif vp == "C" || vp == "c"
      puts "Nope, he's the President."
    else
      puts "Wrong, Kamala Harris is the current VP of the USA."
    end
# Correct answer move on to second question
      if answer == 1
        puts " "
        puts "Next question"
        puts " "

        puts "Who is the current US Senate Majority leader?"
        puts "A - Nancy Pelosi"
        puts "B - Mitch McConnell"
        puts "C - Chuck Schumer"
        puts "D - Marco Rubio"

        puts "---"
        senator = $stdin.gets.chomp
        puts "---"
        puts " "
        if senator == "C" || senator == "c"
          puts "Correct. Chuck Schumer is the current senate majority leader."
        else
          puts "You're wrong."
        end
      end

# World triva
  elsif choice == "w" || choice == "W"
# First question
    puts "Who is the current president of France?"
    puts "A - Emmanuel Macron"
    puts "B - Fanscios Hollande"
    puts "C - Marine Le Pen"
    puts "D - Boris Johnson"

    puts "---"
    france = $stdin.gets.chomp
    puts "---"
    if france == "A" || france == "a"
      puts "Correct, Emmanuel Macron is the current president of France."
    elsif france == "D" || france == "d"
      puts "Wrong, Boris Johnson is the UK Prime Minister. Emmanuel Macron is the correct answer."
    else
      puts "Wrong, Emmanuel Macron is the current president of France."
    end
  end
end

#invokes trivia method
trivia()

#define replay method to prompt user to play again
def replay()
  puts "Play again? Y or N"
  a = $stdin.gets.chomp
  if a == "Y" || a == "y"
    5.times do
      puts " "
    end
    trivia()
  elsif a == "N" || a == "n"
    puts "Game over"
  end
end

#invokes replay method
replay()
