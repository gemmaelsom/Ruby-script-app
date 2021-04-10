# Ruby-script-app
## T1A3 

# Provide instructions to user as to how to import their script into the file as a .txt

### Link to GitHub
https://github.com/gemmaelsom/Ruby-script-app

## Software Development Plan
### Purpose and Scope
#### Describe at a high level what the application will do
This application will work to assist actors with learning their lines and developing their memorisation skills. The user can import a script that they are currently learning, into the program. The program will ask the user which character they would like to play, and it will store this information. The program will then act as a "reader" so that the actor is able to run through their lines. The actor types their line and the program will output the next lines in the script. The user can also access a database of film scripts if they are not working on a particular project but instead would just like to practice their memorisation skills. 

The program will fetch data from a database of other scripts on a Kaggle site and index the scripts by name. The user can search for a particular script that they will want, or for a particular character they'd like to play and the program will fuzzy match their request. The program will implement "file.read.split" to import their own script into the program. It will ask the user which character they would like to play and store this information. The interactive script reader will count the words in the script that the user types (their characters lines) so that it knows to print the next line. The program will look for the next mention of the #{character name} and print up until that point. 

#### Identify the problem it will solve and explain why you are developing it
It's very difficult for actors to learn their lines when they are on their own and not with their scene partner. Some actors resort to writing out their lines over and over again until it sticks, and some will rehearse over the phone with their scene partner. It's quite difficult to learn lines correctly without a reader to read the other characters lines. When this happens, the actor is not learning their queues, or developing a thorough connection the back and forth interaction in the scene. This program offers an alternative, more time efficient opportunity to rehearse in the comfort of their own home and without the need to rely on other actors.

#### Identify the target audience
The target audience for this program are performers of any kind that need to develop strong word memorisation skills. Any form of public speaker, including politicians and toast masters, can use this app. 

#### Explain how a member of the target audience will use it

A member of the target audience will need access to the program, and will need to understand how to access it via their terminal. 

### List of features
Note: Ensure that your features above allow you to demonstrate your understanding of the following language elements and concepts:
- use of variables and the concept of variable scope
- loops and conditional control structures
- error handling

Feature: Interactive script reader
Implementation: count the words in the script that the user types (their characters lines) so that the program knows to print the next line. It would know when to print the words until the #{character1} name appears next

Feature: Script search
Implementation: Data will be fetched from a Kaggle site and indexed by the script name. It will fuzzy match.

Feature: Script import
Implementation: Use file.read.split so that user can import the script they're learning into the program
### Outline of user interaction and experience
Your outline must include:
- how the user will find out how to interact with / use each feature
- how the user will interact with / use each feature
- how errors will be handled by the application and displayed to the user

### Control flow diagram
![Control flow diagram](/controlflowdiagram.jpg)
### Implementation plan
Develop an implementation plan which:
- outlines how each feature will be implemented and a checklist of tasks for each feature
- prioritise the implementation of different features, or checklist items within a feature
- provide a deadline, duration or other time indicator for each feature or checklist/checklist-item

Utilise a suitable project management platform to track this implementation plan

> Your checklists for each feature should have at least 5 items.

### Help documentation
Accurately describe how to use and install the application.

You must include:
- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements

- include testing info

Install ruby
Clone my github
use bash command in the terminal
