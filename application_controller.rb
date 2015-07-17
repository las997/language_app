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
    noungenerator = Noun_Generator.new
    rand_noun_key = noungenerator.rand_noun
    rand_ending_key = noungenerator.rand_ending
    @display = noungenerator.return_noun(rand_noun_key).to_s + noungenerator.return_ending(rand_ending_key).to_s
    @rand_noun_key = rand_noun_key
    @rand_ending_key = rand_ending_key
    erb :noun1_results
  end
  
  post '/latin_ans' do
    if params["noun_translate"] == params["noun_ans"]
      @result = "correct"
    else
      @result = "false"
    end
    erb :latin_results
  end
  
  get '/jnoun_results' do
    erb :jnoun_results
  end
  
end