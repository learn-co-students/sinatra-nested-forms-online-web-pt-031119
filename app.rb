require './environment'

module FormsLab

  class App < Sinatra::Base

    get '/' do 
      erb :root  
    end 

    get '/new' do 
      erb :'pirates/new'   
    end 

    post '/pirates' do
      @pirate = Pirate.new(att_hash[:pirate])

      att_hash[:pirate][:ships].each do |ship_info|
        Ship.new(ship_info)
      end 
      @ships = Ship.all 
      # binding.pry 
      erb:'pirates/show'
    end 

  end
end

# This is where modules come in. Modules allow us to collect 
# and bundle a group of methods and make those methods 
# available to any number of classes.Extracting code that is
# repetitive into a module that can be inherited (accessed and used)  
# by multiple classes.
