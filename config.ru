require 'bundler/setup'
Bundler.require

map '/assets' do
  assets = Sprockets::Environment.new
  assets.append_path 'public'
  Stylus.setup(assets)
  run assets
end

map '/' do
  require './app'
  run Sinatra::Application
end
