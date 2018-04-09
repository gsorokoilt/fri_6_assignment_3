require 'sinatra'

get '/home' do
  erb :index          # instructions for what to do when user visits '/home' will go here
end

get '/gallery' do
  erb :gallery
end

get '/about_me' do
  erb :biography
end
