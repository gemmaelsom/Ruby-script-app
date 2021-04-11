require_relative '../script_import'
require_relative '../script_reader'
require_relative '../script_search'
require_relative '../main'
require 'find'
require 'tty-font'
require 'pastel'
require 'colorize'

describe ScriptSearch do
    def load_scripts
    files = []
    Find.find('./scripts') do |path|
      files.push(path.delete_prefix('./scripts/')) if path =~ /.*\.txt$/
    end
    files
  end
end

describe CharacterSearch do
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
    end