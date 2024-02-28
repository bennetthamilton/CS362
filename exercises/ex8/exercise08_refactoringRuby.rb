# Bennett Hamilton
# CS 362 Exercise 8: Intermediate Ruby

class WordInterface
  def initialize
    @command_names = ["noun", "verb", "adjective", "adverb", "gerund"]
  end

  def get_command
    puts "Enter a command: " + @command_names.join(' ')
    selection = gets.chomp
    if @command_names.include?(selection)
      send(selection)
    else
      puts "Invalid command"
    end
  end

  def noun
    2.times { puts "Noun: Cadillac" }
  end

  def verb
    2.times { puts "Verb: Accelerate" }
  end

  def adjective
    3.times { puts "Adjective: Dark" }
  end

  def adverb
    2.times { puts "Adverb: Confidently" }
  end

  def gerund
    4.times { puts "Gerund: Grooving" }
  end
end

word_interface = WordInterface.new
word_interface.get_command

