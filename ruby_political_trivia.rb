# Defines trivia method
def trivia()
  require 'io/console'
  def space(num)
    num = num.times do
    puts " "
  end
  end

  puts "Welcome to Political Trivia"
  puts " "
  puts "Would you like to play US trivia or World trivia?"
  puts "Enter u or w"

# US trivia
  choice = STDIN.getch
# Selected type of triva
  if choice == "u" || choice == "U"
# First question
    space(70)
    puts "Who is the current Vice President of the United States of America?"
    puts "a - Barack Obama"
    puts "b - Kamala Harris"
    puts "c - Joe Biden"
    puts "d - Al Gore"

    puts "---"
    vp = STDIN.getch
    puts "---"

    if vp == "B" || vp == "b"
      space(70)
      puts "Correct, Kamala Harris is the current VP of the USA."
      sleep(2)
      answer = 1
    elsif vp == "C" || vp == "c"
      puts "Nope, he's the President."
    else
      puts "Incorrect, Kamala Harris is the current VP of the USA."
    end
# Correct answer move on to second question
      if answer == 1
        space(70)
        puts "Who is the current US Senate Majority leader?"
        puts "A - Bernie Sanders"
        puts "B - Mitch McConnell"
        puts "C - Chuck Schumer"
        puts "D - Marco Rubio"

        puts "---"
        senator = STDIN.getch
        puts "---"
        puts " "
        if senator == "C" || senator == "c"
          space(70)
          puts "Correct. Chuck Schumer is the current senate majority leader."
          sleep(2)
          if senator == "C" || senator == "c"
            space(70)
            puts "Who is the current US Speaker of the House"
            puts "A - Kevin McCarthy"
            puts "B - Nancy Pelosi"
            puts "C - Diana DeGette"
            puts "D - Adam Schiff"
            puts "---"
            speaker = STDIN.getch
            puts "---"
            puts " "
            if speaker == "b" || speaker == "B"
              puts "Correct, Nancy Pelosi is the current Speaker of the House."
            else
              puts "Incorrect, Nancy Pelosi is the current Speaker of the House."
            end
          end
        else
          puts "Incorrect."
        end
      end

# World trivia
  elsif choice == "w" || choice == "W"
# First question
    space(70)
    puts "Who is the current president of France?"
    puts "A - Emmanuel Macron"
    puts "B - Fanscios Hollande"
    puts "C - Marine Le Pen"
    puts "D - Boris Johnson"

    france = STDIN.getch

    if france == "A" || france == "a"
      space(70)
      puts "Correct, Emmanuel Macron is the current president of France."
    elsif france == "D" || france == "d"
      space(70)
      puts "Incorrect, Boris Johnson is the UK Prime Minister. Emmanuel Macron is the correct answer."
    else
      space(70)
      puts "Incorrect, Emmanuel Macron is the current president of France."
    end
  end
end

#invokes trivia method
trivia()

#define replay method to prompt user to play again
def replay()
  require 'io/console'
  puts "Play again? Y or N"
  replay = STDIN.getch
  if replay == "Y" || replay == "y"
    5.times do
      puts " "
    end
    trivia()
  elsif replay == "N" || replay == "n"
    puts "Game over"
  end
end

#invokes replay method
replay()
