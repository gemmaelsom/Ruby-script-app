require 'mail'

# program asks user reflective questions to help them prepare for the scene and ensure they are doing the work

questions = {}
def character_preparation(questions)
puts 'As an actor, it is important to conduct '
    input = gets.chomp.downcase
    if input == 'yes'
    puts questions
    else next
    end
end