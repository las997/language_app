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
  
  get '/japanese.erb' do
    erb :latin
  end
  
  get '/noun_generator' do
    erb : noun_generator
  end
  
end