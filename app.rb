require 'sinatra'
set :session_secret, 'secretive..'

get '/' do
  "hello!"
end

get '/secret' do
  "shhhhhh!!"
end

get '/batcave' do
  "welcome to the batcave!"
end

get '/death' do
  "you've reached the end!!"
end

get '/random-cpet' do
  @pet_names = 2.times.map { ["Amigo", "Misty", "Almond"].sample }.join(" and ")
  erb(:index)
end

get '/named-pet' do
  p params
  @name = params[:name]
  erb(:index)
end
