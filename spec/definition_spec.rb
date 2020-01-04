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

  describe('.all') do
    it("returns a list of all definitions") do
      definition = Definition.new('of, relating to, or affirming existence', @word.id, nil)
      definition.save()
      another_definition = Definition.new('incorrect or misleading information', @word.id, nil)
      another_definition.save()
      expect(Definition.all).to(eq([definition, another_definition]))
    end
  end

  describe('#save') do
    it("saves a definition") do
      definition = Definition.new('of, relating to, or affirming existence', @word.id, nil)
      definition.save()
      expect(Definition.all).to(eq(definition))
    end
  end

  describe('.clear') do
    it("clears all definitions") do
      definition = Definition.new('of, relating to, or affirming existence', @word.id, nil)
      definition.save()
      another_definition = Definition.new('incorrect or misleading information', @word.id, nil)
      another_definition.save()
      expect(Definition.all).to(eq([]))
    end
  end

  describe('#==') do
    it("is the same definition if it has the same attributes as another definition") do
      definition = Definition.new('of, relating to, or affirming existence', @word.id, nil)
      definition_to_compare = Definition.new('of, relating to, or affirming existence', @word.id, nil)
      expect(definition).to(eq(definition_to_compare))
    end
  end

end
