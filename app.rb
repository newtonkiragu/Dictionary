require('sinatra')
require('sinatra/reloader')
require('./lib/definition')
require('./lib/word')
also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all()
  erb(:index)
end

get('/word/new') do
  erb(:word_form)
end

get('/words/:id/definitions/new') do
  id = params.fetch('id').to_i
  @word = Word.find(id)
  erb(:definition_form)
end

post('/words') do
  @word = params.fetch('word')
  word = params.fetch('word')
  my_word = Word.new(word)
  my_word.save()
  erb(:success)
end

post('/definitions') do
  @added_word = params.fetch('word')
  word = params.fetch('word')
  @definition = Definition.new({word:word})
  @definition.save()
  @word = Word.find(params.fetch('word_id').to_i)
  @word.save_definition(@definition)
  erb(:word)
end

get('/words/:id') do
  @word = Word.find(params.fetch("id"))
  erb(:word)
end
