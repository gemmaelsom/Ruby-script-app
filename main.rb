# require_relative './script_import'
# require_relative './script_search'
# require_relative './script_reader'
# require_relative './character_selection'
require 'find'

files = []
Find.find('./scripts') do |path|
  # p path
  files.push(path.delete_prefix('./scripts/')) if path =~ /.*\.txt$/
end

# Greet user
puts "Welcome to the Interactive Script Reader - Every Actors New Best Friend. I'm Cheeky, and I'm going to help you memorise your lines faster than ever before. Are you ready?"
users_response = gets.chomp
if users_response == 'yes'
  the_user_wants_to_quit = false
  until the_user_wants_to_quit
    files.each do |script|
      puts script
    end
    users_file = gets.chomp
    file = File.read("./scripts/#{users_file}")
    # file = File.read("./scripts/test.txt") # DEBUG
    script = file.split("\n")
    script = script.map { |line| line.split(' ', 2) }
    # separating all of the lines for each character
    the_user_wants_a_new_script = false
    until the_user_wants_a_new_script

      # Character selection
      puts 'Which character would you like to play?'
      character = gets.chomp.downcase
      puts "Your character is #{character}"
      # iterate over script
      character_is_not_in_script = true

      script.each do |line|
        begin
          if character.downcase == line[0].downcase
            character_is_not_in_script = false
            break
          end
        rescue
          next
        end
      end

      if character_is_not_in_script
        puts "That character isn't in the script"
      else
        # puts 'script code goes here'
        script.each do |line|
          # iterate over every line and if the character name appears, output the preceeding lines
          if line[0] != character.upcase
            puts line
          else
            user_is_correct = false
            until user_is_correct
              users_line = gets.chomp
              # check if the users_line matches the current
              if users_line == line[1]
                user_is_correct = true
              else
                puts 'Not quite. Try again!' 
              end
            end
          end
        end
      end



      

      puts 'Again as [same], [new] or [exit]?'
      input = gets.chomp

      if input == 'exit'
        the_user_wants_a_new_script = true
        the_user_wants_to_quit = true
      elsif input == 'new'
        the_user_wants_a_new_script = true
      end
    end
  end
else
  puts 'bye!'
end

# if users_response != 'yes'
#   puts "Did you mean to say 'Yes'?"
# elsif users_response == 'yes'
#   puts 'Awesome! Have you already imported your script to the app?'
# end
