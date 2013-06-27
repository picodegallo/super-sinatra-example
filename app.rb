require 'sinatra/base'
require './models/team.rb'
require './models/hero.rb'

module SuperSinatra
  class App < Sinatra::Base

    get '/' do
      erb :'super_hero'
    end

    post '/team' do 
    @team = Team.create(params)  
    erb :'team'
    end


  end
end