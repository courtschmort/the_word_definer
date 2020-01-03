require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all()
  erb(:words)
end

get('/words') do
  if params["search"]
    @words = Word.search_text(params[:search])
  else
    @words = Word.all()
  end
  erb(:words)
end

get('/words/add') do
  erb(:add_word)
end

get('/words/:id') do
  @word = Word.find(params[:id].to_i())
  erb(:word)
end

post('/words') do
  word = Word.new(params[:word_text], nil)
  word.save()
  @words = Word.all()
  erb(:words)
end

get('/words/:id/edit') do
  @word = Word.find(params[:id].to_i())
  erb(:edit_word)
end

patch('/words/:id') do
  @word = Word.find(params[:id].to_i())
  @word.update(params[:text])
  @word = Word.all()
  erb(:words)
end

delete('/words/:id') do
  @word = Word.find(params[:id].to_i())
  @word.delete()
  @words = Word.all()
  erb(:words)
end
