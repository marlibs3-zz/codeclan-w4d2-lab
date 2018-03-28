#app.rb
require 'sinatra'
require 'sinatra/contrib/all' if development?

get '/roll-die' do
  "Rolling the die... #{rand(1...7)}"
end

get '/name/:first/:last' do
  return "Your name is #{params[:first]} #{params[:last]}"
end
