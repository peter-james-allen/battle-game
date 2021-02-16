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

get '/dogcat' do
  "<div style='border: 2px dashed red'>
    <img src = 'https://bit.ly/3pyLUpj'>
  </div>"
end
