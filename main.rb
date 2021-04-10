# require_relative './script_import'
# require_relative './script_search'
# require_relative './script_reader'
# require_relative './character_selection'
require 'find'
require 'tty-font'
require 'pastel'
require 'colorize'

def print_welcome_banner
  font = TTY::Font.new(:doom)
  pastel = Pastel.new
  puts pastel.white(font.write('Interactive Script Reader'))
  puts pastel.blue(font.write('Every Actors New Best Friend'))
  font = TTY::Font.new(:doom)
  pastel = Pastel.new
  puts pastel.white(font.write('WELCOME!', letter_spacing: 2))
end

def handle_help
  puts 'Make sure you have imported your chosen script as a txt file to this document.'
  puts 'Please ensure that your chosen script abides by the following format:'
  puts 'CHARACTER NAME  line'
  puts 'If this format is not followed, the program will not recognise the lines in your script.'
  exit
end

def load_scripts
  files = []
  Find.find('./scripts') do |path|
    files.push(path.delete_prefix('./scripts/')) if path =~ /.*\.txt$/
  end
  files
end

def is_script_available(select_file, files)
  script_is_available = false
  files.each do |script|
    if script == select_file
      script_is_available = true
    end
  end
  script_is_available
end


def is_character_in_script(script, character)
  character_is_not_in_script = false
  script.each do |line|
    begin
      if character.downcase == line[0].downcase
        character_is_not_in_script = true
        break
      end
    rescue
      next
    end
  end
  character_is_not_in_script
end

if ARGV.include? '--help'
  handle_help
end

print_welcome_banner
files = load_scripts

# Greet user
puts "I'm Cheeky, and I'm going to help you memorise your lines faster than ever before. Are you ready?".colorize(:blue)
users_response = gets.chomp
if users_response == 'yes'
  the_user_wants_to_quit = false
  puts 'Great. Here is a list of the scripts you can learn with me. Let me know which one you would like to work on today.'.colorize(:blue)
  puts 'Please ensure to use correct casing for the file name.'.colorize(:blue)
  until the_user_wants_to_quit
    files.each do |script|
      puts script.colorize(:yellow)
    end
    selected_file = gets.chomp

    is_script_available = is_script_available(selected_file, files)
    if is_script_available == false
      puts 'Please select one of the files below.'
      puts 'Make sure you have used the correct casing for the file name.'
      next
    end

    file = File.read("./scripts/#{selected_file}")
    script = file.split("\n")
    script = script.map { |line| line.split(' ', 2) }
    the_user_wants_a_new_script = false
    until the_user_wants_a_new_script

      # Character selection
      puts 'Which character would you like to play?'.colorize(:blue)
      character = gets.chomp.downcase

      character_is_not_in_script = is_character_in_script(script, character)

      if character_is_not_in_script == false
        puts "That character isn't in the script".colorize(:blue)
      else
        puts 'Okay. Make sure to enter your lines with the correct grammar and punctuation.'
        puts 'Hit enter twice after typing your line. Hit enter to begin.'.colorize(:blue)
        gets
        script.each do |line|
          # iterate over every line and if the character name appears, output the preceeding lines

          begin
            if line[0].upcase != character.upcase
              puts "#{line[0]}: #{line[1]}"
            else
              user_is_correct = false
              until user_is_correct
                print (character.upcase + ": ").colorize(:red)
                users_line = gets.chomp.downcase.split
                gets
                if users_line == line[1].downcase.split
                  user_is_correct = true
                  puts 'Correct. Well done.'.colorize(:blue)
                else
                  puts 'Not quite. Try again!'.colorize(:blue)
                end
              end
            end
          rescue
            next
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