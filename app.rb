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

# get('/words/:word') do
#   @word = word.find_word(params[:word])
#   erb(:definitions)
# end
#
# post('/words/:word') do
#   word = params["last_name"]
#   @contact = Contact.find_by_last_name(name)
#   new_phone_number = params["new_phone_number"]
#   @contact.add_phone_number(new_phone_number)
#   erb(:definitions)
# end
