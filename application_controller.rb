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
    erb : noun_generator
  end
  
end