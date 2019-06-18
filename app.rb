require './environment'

module FormsLab
  class App < Sinatra::Base

get '/' do
  erb :root
end

get '/new' do
  erb :new
end

post '/pirate' do
  erb :show
end

  end
end
