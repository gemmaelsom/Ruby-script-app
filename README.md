# Ruby-script-app
## T1A3 

# Provide instructions to user as to how to import their script into the file as a .txt

### Link to GitHub
https://github.com/gemmaelsom/Ruby-script-app

## Software Development Plan
#### Describe at a high level what the application will do
This application will work to assist actors with learning their lines and developing their memorisation skills. The user can import a script (as a txt file) that they are currently learning, into the program. The program will ask the user which character they would like to play, and it will remember this information. The program will then act as a "reader" so that the actor is able to run through their lines. The actor types their line and the program will output the next lines in the script. The user can also access a small database of film scripts if they are not working on a particular project but instead would just like to practice their memorisation skills. 

The program loops through the data in the selected txt file looking for the users characters name. It will then print the proceeding lines from the script and then prompt the user to enter their line. The program will advise the user if they were correct, and if they were incorrect it will prompt them to try again. Once the script has been completed, the program will ask the user if they would like to try again with the same script, try with a new script, or exit.

It's very difficult for actors to learn their lines when they are on their own and not with their scene partner. Some actors resort to writing out their lines over and over again until it sticks, and some will rehearse over the phone with their scene partner. It's quite difficult to learn lines correctly without a reader to read the other characters lines as there is no prompt to remind them of their cue. When this happens, the actor is not learning their cues correctly, nor are they developing a thorough understanding of the back and forth interaction in the scene. This program offers an alternative, more time efficient opportunity to rehearse in the comfort of their own home and without the need to rely on other actors.

The target audience for Interactive Script Reader are performers of any kind that need to develop strong word memorisation skills. Any form of public speaker, including politicians and toast masters, can use this app. 

A member of the target audience will need access to the program, and will need to understand how to access it via their terminal. The user will need to have Ruby installed on their machine, and will then need to clone the Ruby-script-app repository on my GitHub. Once this has been cloned, the user needs to type the following into their terminal "git clone git@github.com:gemmaelsom/Ruby-script-app.git".

### List of features

Feature: Welcome banner
Implementation: I've used the gems tty-font, pastel, and colorize to make a pretty welcome banner. 

Feature: Script search
Implementation: I've written a function called is_script_available that searches for the users preferred script. A menu is printed that shows the scripts that have been imported into the file already. The user needs to input which one they would like to rehearse with. If the input does not match the txt files available, the user will be advised that the script is not available and will be prompted to try again. 

Feature: Character selection
Implementation: The user is asked to input which character they'd like to play, and the users input is assigned to a variable named "character". If that character is available, the program will continue on with the next block of code. If the character is unavailable, the user will be notified and prompted to try again. I've done this by using a loop that searches the selected script to see if there is a match to the variable.

Feature: Script reader
Implementation: Once the user has begun the rehearsal, the program uses gets.chomp.downcase.split to check that the user said their line correctly. As I do not have control over the formatting of the scripts that are importing into the file, I had to use split in case there is any extra white space. I also added downcase as it's unlikely the user will type the line exactly as it's written in the script. I've used boolean values to determine whether the users input correctly matched their next line.

Feature: Options to quit, repeat, or try something new
Implementation: In the beginning, the program asks if the user is ready to begin, if they type anything other than 'yes' the code will say goodbye to the user and exit the program. Later on, after the script has been rehearsed, the user is provided the options of trying again using the "same script", trying with a "new" script, or if they would like to "exit". If they select "exit", the program will exit. 

Feature: Command Line Argument
Implementation: If the user needs assistance using the program, they can execute "--help" and some helpful tips will be printed for them. For this I've used "ARGV".

### Outline of user interaction and experience

This program is very simple to run, mostly because the program clearly outlines the instructions to them consistently throughout the experience. The program has been written to take all potential errors into consideration to ensure that the user is not lost, or that no Traceback Error appears. 

### Control flow diagram
![Control flow diagram](/controlflow.png)

### Implementation plan
https://trello.com/b/QAUbhGs4/rubyscriptapp


### Help documentation

To install this application you will need to firstly ensure that Ruby is installed on your machine. To check if you already have Ruby installed, enter "Ruby -v" into your terminal. If Ruby is already installed, the Ruby version you have will be outputted. For details on how to install Ruby, please see https://github.com/rbenv/rbenv. 

Once Ruby is installed, you will need to clone the Ruby-script-app repo from my GitHub. Copy "git clone ~insert link here~" into your terminal and then run "install_script.sh" and the program will begin. 

If you would like to import your own script into the application, add your script to the "scripts" folder. Please note that for this to work, the script must be a .txt document. The document must be formatted as so - "CHARACTER NAME    character's line here". If there are any numbers or quotation marks before the characters name, the program will not be able to run. 

When rehearsing a script, it is important to use correct grammar and punctuation when typing your lines, although it does not matter if the letters are in upper or down case. 