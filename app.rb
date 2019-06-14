require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirates = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end

      @ships = Ship.all
      erb :show
    end
  end
end
