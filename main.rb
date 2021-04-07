require_relative './script_import'
require_relative './script_search'

if __FILE__ == $0
    puts "Enter the relative path to your file:"
    users_file = gets.chomp
    fileContents = ScriptImport.new(users_file).read_file
    puts fileContents
end
