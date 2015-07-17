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
  
  post '/results' do
    group1_japanese_verbs = {
    :to_go => "いきます",
    :to_eat => "たべます",
    :to_drink => "のみます",
    :to_write => "かきます"
    }
    
    question = params["japanese"]
    user_input = params["english"]
    answer = ""
    group1_japanese_verbs.each do |key, value|
      if question == value
        answer = key.to_s.gsub("_", " ")
      end
    end
    if answer == user_input
      @answer = "You are correct"
    else 
      @answer = "You are wrong. Try again."
    end
  end

  get '/japanese.erb' do
     group1_japanese_verbs = {
    :to_go => "いきます",
    :to_eat => "たべます",
    :to_drink => "のみます",
    :to_write => "かきます"
    }
    japanese = group1_japanese_verbs.values
    @rand_verb = japanese[rand(japanese.length)]
    
    

    erb :japanese
  end

  get '/noun_generator' do
#     erb : noun_generator
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

  
  get '/jnoun_results.erb' do
    erb :jnoun_results
  end
  
end
