#!/bin/bash
echo "Hello World!"
echo "Now preparing directories for installation..."
touch users.csv
rm gemfile.lock
bundle install

ruby main.rb