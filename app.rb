require('sinatra')
require('sinatra/reloader')
require('./lib/devoweler.rb')

set :public_folder, 'public'

get('/') do
  erb(:index)
end

get('/puzzle') do
  @puzzle = params.fetch('input').devoweler
  erb(:puzzle)
end
