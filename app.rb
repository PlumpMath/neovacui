require 'sinatra'
require 'sinatra/cookies'
require 'json'

set :root, File.dirname(__FILE__) + '/dist'
set :public_folder, File.dirname(__FILE__) + '/dist'


get '/' do 
  File.read(File.join('dist', 'index.html'))
end

# THIS IS A TERRRILBE WAY TO DO THIS REALLY REALLY BAD
# SOMEONE MIGHT DIE
# PLEASE MAKE SURE THIS GETS CHANGED
# SERIOUSLY
# I WILL HUNT YOU DOWN
get '/auth' do
  content_type :json 
  {:auth =>  request.env['bouncer.token']}.to_json
end
