require 'sinatra'
require 'sprockets'
require 'coffee-script'

map '/assets' do
  assets = Sprockets::Environment.new
  assets.append_path 'public'
  run assets
end

map '/' do
  require './app'
  run Sinatra::Application
end
