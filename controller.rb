require('sinatra')
require('sinatra/reloader') if development?
require('pry-byebug')

require_relative('./models/hogwarts')
also_reload('./models/*')
