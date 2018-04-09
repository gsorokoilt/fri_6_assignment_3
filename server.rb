require 'sinatra'

get '/' do
  redirect to('/home')
end


get '/home' do
  erb :index
end

get '/gallery' do
  erb :gallery
end

get '/portfolio' do
  redirect to :gallery
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
