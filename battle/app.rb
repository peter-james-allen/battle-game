require 'sinatra/base'
require_relative './player'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "My session secret"

  get '/' do
    erb :index
  end

  post '/named-players' do
    session[:player1] = Player.new(params[:player1])
    session[:player2] = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @message = session[:message]
    erb :players
  end

  post '/p1attack' do
    session[:player2].attacked
    session[:message] = "#{session[:player1].name} attacked #{session[:player2].name}!"
    redirect '/play'
  end

  run! if app_file == $0
end