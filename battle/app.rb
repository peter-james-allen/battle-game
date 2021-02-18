require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    "Welcome to battle"
  end

  run! if app_file == $0
end