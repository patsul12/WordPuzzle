require('sinatra')
require('sinatra/reloader')
require('./lib/devoweler.rb')

@title = "Word Puzzle"

get('/') do
  @page_header = "Welcome to the Word Puzzle App!"
  erb(:index)
end

get('/puzzle') do
  @page_header = "Can you solve puzzle?"
  @answer = params.fetch('input')
  @puzzle = @answer.devoweler
  erb(:puzzle)
end
