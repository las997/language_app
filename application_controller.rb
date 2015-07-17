require 'bundler'
Bundler.require

require_relative './models/models.rb'
require_relative './models/noun_generator.rb'

class MyApp < Sinatra::Base

  
  get '/' do
    erb :index
  end

  get '/results.erb' do
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
    noungenerator = Noun_Generator.new
    rand_noun_key = noungenerator.rand_noun
    rand_ending_key = noungenerator.rand_ending
    @word = noungenerator.return_noun(rand_noun_key).to_s + noungenerator.return_ending(rand_ending_key).to_s
    
    erb :noun1_results
  end
  
  post '/noun1answer.erb' do
     noun_input = #params[:text]
     ending_input = #params[:dropdown]
     noungenerator.read_compare_noun(noun_input, rand_noun_key)
  end
  
  get '/jnoun_results.erb' do
    erb :jnoun_results
  end
  
  get '/action_page.erb' do
    erb :action_page
  end
  
end