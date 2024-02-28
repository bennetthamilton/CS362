# YOUR NAME
# CS 362 Exercise 8: Intermediate Ruby

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

command_names = ["noun", "verb", "adjective", "adverb", "gerund"]

puts "Enter a command: " +
                 command_names[0] + ' ' +
                 command_names[1] + ' ' +
                 command_names[2] + ' ' +
                 command_names[3] + ' ' +
                 command_names[4]
selection = gets.chomp

if selection == command_names[0]
  noun
elsif selection == command_names[1]
  verb
elsif selection == command_names[2]
  adjective
elsif selection == command_names[3]
  adverb
elsif selection == command_names[4]
  gerund
end

