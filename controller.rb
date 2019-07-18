require('sinatra')
require('sinatra/reloader') if development?
require('pry-byebug')

require_relative('./models/hogwarts')
also_reload('./models/*')


get '/students' do
  @students =  Student.all()
  erb(:index)
end

get '/students/new' do
  erb(:new)
end
