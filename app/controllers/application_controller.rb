require 'sinatra/base'
require './app/models/hero.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])
      params[:team][:heroes].each do |h|
        Hero.new(h)
      end

      @heroes = Hero.all

      erb :team
    end

end
