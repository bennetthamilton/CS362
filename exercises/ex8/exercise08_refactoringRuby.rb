# Bennett Hamilton
# CS 362 Exercise 8: Intermediate Ruby

$command_hash_names = {
  'noun'=> {:times => 2, :type => 'Noun', :word => 'Cadillac'},
  'verb'=> {:times => 2, :type => 'Verb', :word => 'Accelerate'},
  'adjective'=> {:times => 3, :type => 'Adjective', :word => 'Dark'},
  'adverb'=> {:times => 2, :type => 'Adverb', :word => 'Confidently'},
  'gerund'=> {:times => 4, :type => 'Gerund', :word => 'Grooving'}
}

def to_word(word)
  $command_hash_names[word][:times].times { puts $command_hash_names[word][:type] + ": " + $command_hash_names[word][:word]}
end

puts "Enter a command: " + $command_hash_names.keys.join(" ")
selection = gets.chomp
to_word(selection)