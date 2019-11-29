require 'sinatra/base'
require_relative './app/models/hero.rb'
require_relative './app/models/team.rb'


class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])
      params[heroes].each do |h|
        Hero.new(h)
      end

      @heroes = Hero.all

      erb :team
    end

end
