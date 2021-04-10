require_relative '../script_import'
require_relative '../script_reader'
require_relative '../script_search'
require 'find'
require 'tty-font'
require 'pastel'
require 'colorize'

describe print_welcome do
def print_welcome
print_welcome = it 'should print welcome banner in color'
font = TTY::Font.new(:doom)
pastel = Pastel.new
puts pastel.white(font.write('WELCOME!', letter_spacing: 2))
end
end