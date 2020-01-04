require('rspec')
require('definition.rb')
require('word.rb')
require('pry')

describe '#Definition' do

  before(:each) do
    Word.clear()
    Definition.clear()
    @word = Word.new('existential', nil)
    @word.save()
  end

  describe('#==') do
    it("is the same definition if it has the same attributes as another definition") do
      definition = Definition.new('of or relating to existence.', @word.id, nil)
      definition_to_compare = Definition.new('of or relating to existence.', @word.id, nil)
      expect(definition).to(eq(definition_to_compare))
    end
  end

end
