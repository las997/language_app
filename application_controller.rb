require 'bundler'
Bundler.require

require_relative './models/models.rb'
require_relative './models/noun_generator.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/results' do
    erb :results
  end
  
  get '/japanese.erb' do
    erb :japanese
  end
  
  get '/latin.erb' do
    erb :latin
  end
      
  get '/noun1_results.erb' do
    @noun = Noun_Generator.new
    erb :noun1_results
  end
  
  get '/jnoun_results.erb' do
    erb :jnoun_results
  end
  
end