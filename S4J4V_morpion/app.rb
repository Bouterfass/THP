require 'bundler'
Bundler.require
require 'colorize'

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/application'
require 'app/board'
require 'app/player'
require 'app/game'


app = Application.new
app.launch_game
