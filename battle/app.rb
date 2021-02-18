require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/named-players' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb :players
  end

  run! if app_file == $0
end