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
<<<<<<< HEAD
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
=======
    erb :japanese
  end

  get '/latin.erb' do
    erb :latin
  end

  get '/noun1_results.erb' do
    @noun = Noun_Generator.new
    erb :noun1_results
>>>>>>> 4d8f4911a4a85b0e9d60dd1a95dd1adb64ad767a
  end

end
