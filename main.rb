# require_relative './script_import'
# require_relative './script_search'
# require_relative './script_reader'
# require_relative './character_selection'
require 'find'
require 'tty-font'
require 'pastel'
require 'colorize'

font = TTY::Font.new(:doom)
pastel = Pastel.new
puts pastel.white(font.write('Interactive Script Reader'))
puts pastel.blue(font.write('Every Actors New Best Friend'))

font = TTY::Font.new(:doom)
pastel = Pastel.new
puts pastel.white(font.write('WELCOME!', letter_spacing: 2))

files = []
Find.find('./scripts') do |path|
  files.push(path.delete_prefix('./scripts/')) if path =~ /.*\.txt$/
end

# Greet user
puts "I'm Cheeky, and I'm going to help you memorise your lines faster than ever before. Are you ready?".colorize(:blue)
users_response = gets.chomp
if users_response == 'yes'
  the_user_wants_to_quit = false
  puts 'Great. Here is a list of the scripts you can learn with me. Let me know which one you would like to work on today.'.    colorize(:blue)
  until the_user_wants_to_quit
    files.each do |script|
      puts script.colorize(:blue)
    end
    users_file = gets.chomp
    file = File.read("./scripts/#{users_file}")
    script = file.split("\n")
    script = script.map { |line| line.split(' ', 2) }
    the_user_wants_a_new_script = false
    until the_user_wants_a_new_script

      # Character selection
      puts 'Which character would you like to play?'.colorize(:blue)
      character = gets.chomp.downcase
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
        puts "That character isn't in the script".colorize(:blue)
      else
        script.each do |line|
          # iterate over every line and if the character name appears, output the preceeding lines
          if line[0] != character.upcase
            puts line
          else
            user_is_correct = false
            until user_is_correct
              users_line = gets.chomp.downcase.split
              gets
              if users_line == line[1].downcase.split
                user_is_correct = true
                puts 'correct'.colorize(:blue)
              else
                puts 'Not quite. Try again!'.colorize(:blue)
              end
            end
          end
        end
      end



      puts 'Try again? [same script], [new], [exit]'.colorize(:blue)
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
  puts 'Bye!'.colorize(:blue)
end