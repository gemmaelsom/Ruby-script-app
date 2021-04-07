require_relative './script_import'
require_relative './script_search'
require_relative './script_reader'

# Greet user
puts "Welcome to the Interactive Script Reader - Every Actors New Best Friend. I'm Cheeky, and I'm going to help you memorise your lines faster than ever before. Are you ready?"
users_response = gets.chomp.to_s
if users_response != 'yes'
  puts "Did you mean to say 'Yes'?"
else
  puts 'Awesome!'
end

# Script selection

# StarWars Scripts
if __FILE__ == $0
puts 'Which Star Wars script would you like to rehearse? StarWars_EpisodeIV.txt? StarWars_EpisodeV.txt? or StarWars_EpisodeVI.txt?'
    users_file = gets.chomp
    file_contents = ScriptImport.new(users_file).read_file
end

# Character selection
def character_selection
    puts 'Thank you. Which character would you like to play?'
    character = gets.chomp
    puts "Your character is #{character}"
    end
