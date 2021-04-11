#!/bin/bash
echo "Now preparing directories for installation..."
touch users.csv
rm gemfile.lock
bundle install

ruby main.rb