require 'bundler'
Bundler.require

require './models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/results' do
    erb :results
  end
  
  get '/contact' do
    @name = "Lauren"
    erb :contact
  end
  
  get '/media' do
    @media = ["photos","videos","music"]
    erb :media 
  end
  
  get '/about' do
    @about = "Lauren"
    erb :about
  end
  
  get '/guitar' do
    @guitar1 - Guitar.new("Stratocaster")
    puts @guitar1.model
    erb :guitar
  end
  
end