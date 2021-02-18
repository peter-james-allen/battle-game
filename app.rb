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

get '/random-pets' do
    @pet_names = 2.times.map { ["Amigo", "Misty", "Almond"].sample }.join(" and ")
    erb(:index)
end

post '/named-pets' do
    p params
    @pet_name = params[:name]
    erb(:index) + erb(:pet_form)
end

get '/name-the-pets' do
    erb(:index) + erb(:pet_form)
end
