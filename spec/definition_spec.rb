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
      def1 = Definition.new('of, relating to, or affirming existence', @word.id, nil)
      def1.save()
      def2 = Definition.new('grounded in existence or the experience of existence', @word.id, nil)
      def2.save()
      def3 = Definition.new('having being in time and space', @word.id, nil)
      def3.save()
      expect(Definition.all).to(eq([def1, def2, def3]))
    end
  end

  describe('#save') do
    it("saves a definition") do
      def1 = Definition.new('of, relating to, or affirming existence', @word.id, nil)
      def1.save()
      expect(Definition.all).to(eq([def1]))
    end
  end

  describe('.clear') do
    it("clears all definitions") do
      def1 = Definition.new('of, relating to, or affirming existence', @word.id, nil)
      def1.save()
      def2 = Definition.new('grounded in existence or the experience of existence', @word.id, nil)
      def2.save()
      def3 = Definition.new('having being in time and space', @word.id, nil)
      def3.save()
      Definition.clear()
      expect(Definition.all).to(eq([]))
    end
  end

  describe('#==') do
    it("is the same definition if it has the same attributes as another definition") do
      def1 = Definition.new('of, relating to, or affirming existence', @word.id, nil)
      def2 = Definition.new('of, relating to, or affirming existence', @word.id, nil)
      expect(def1).to(eq(def2))
    end
  end

end
