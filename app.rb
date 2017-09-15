require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/word_definer')

get('/')do
  @words = Word.all()
  erb(:index)
end

post('/') do
  word = params["word"]
  new_word = Word.new({:word => word})
  new_word.save()
  @words = Word.all()
  erb(:index)
end

post('/sort') do
  @words = Word.sort()
  erb(:index)
end

get('/definitions/:word') do
  @word = Word.find_word(params[:word])
  erb(:definition)
end

post('/definitions/:word') do
  @word = Word.find_word(params[:word])
  new_definition = params["definition"]
  @word.add_definition(new_definition)
  erb(:definition)
end
