require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base
  get '/' do
   erb :root
  end
    # code other routes/actions here

  get '/new' do
  erb :'pirates/new'
  end

  post '/pirates' do
    @pirate = Pirate.new(params[:pirate])
    
    
       params[:pirate][:ships].each do |ship_detials|
       Ship.new(ship_detials)
       end
       @ships = Ship.all
      
    erb :'pirates/show'
  end
end
end
