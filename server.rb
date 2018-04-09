require 'sinatra'

get '/home' do
  erb :index          # instructions for what to do when user visits '/home' will go here
end

get '/gallery' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :biography
end

get '/favourites' do

  @fav_links = [ {url: 'http://mmajunkie.com/', title: 'MMA Junkie'}, {url: 'http://www.bbc.co.uk/' ,title:'BBC UK'}, {url:'https://www.github.com', title: 'Git Hub'}, {url:'https://japantoday.com/',title:'Japan Today'},{url: 'https://www.hawaiilife.com', title:'Hawaii Life'}]
  erb :favourites
end
