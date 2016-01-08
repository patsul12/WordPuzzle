require('sinatra')
require('sinatra/reloader')
require('./lib/devoweler.rb')

get('/') do
  erb(:index)
end

get('/puzzle') do
  @puzzle = params.fetch('input').devoweler
  erb(:puzzle)
end
