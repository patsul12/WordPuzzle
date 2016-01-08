require('sinatra')
require('sinatra/reloader')
require('./lib/devoweler.rb')

get('/') do
  @title = "Word Puzzle"
  @page_header = "Welcome to the Word Puzzle App!"
  erb(:index)
end

get('/puzzle') do
  @title = "Word Puzzle"
  @page_header = "Can you solve the puzzle?"
  @answer = params.fetch('input')
  @puzzle = @answer.devoweler
  erb(:puzzle)
end
