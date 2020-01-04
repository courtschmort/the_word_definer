require('rspec')
require('word.rb')
require('pry')

describe '#Word' do

  before(:each) do
    Word.clear()
  end

  describe('.all') do
    it('returns an empty array when there are no words') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a word') do
      word1 = Word.new('existential', nil)
      word1.save()
      expect(Word.all()).to(eq([word1]))
    end
  end

  describe('.clear') do
    it('clears all words') do
      word1 = Word.new('existential', nil)
      word1.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#==') do
    it('is the same word if it has the same attributes as another word') do
      word1 = Word.new('existential', nil)
      word2 = Word.new('existential', nil)
      expect(word1).to(eq(word2))
    end
  end

  describe('.find') do
    it('finds a word by id') do
      word1 = Word.new('existential', nil)
      word1.save()
      word2 = Word.new('misinformation', nil)
      word2.save()
      expect(Word.find(word1.id)).to(eq(word1))
    end
  end

  describe('.search') do
    it('searches for a word by text') do
      word1 = Word.new('existential', nil)
      word1.save()
      expect(Word.search(word1.text)).to(eq([word1]))
    end
  end

  describe('#update') do
    it('updates a word') do
      word1 = Word.new('existential', nil)
      word1.save()
      word1.update('rutabaga')
      expect(word1.text).to(eq('rutabaga'))
    end
  end

  describe('#delete') do
    it('deletes a word by id') do
      word1 = Word.new('existential', nil)
      word1.save()
      word2 = Word.new('misinformation', nil)
      word2.save()
      word1.delete()
      expect(Word.all()).to(eq([word2]))
    end
  end

  describe('#definitions') do
    it("returns a word's definitions") do
      word1 = Word.new('existential', nil)
      word1.save()
      def1 = Definition.new('of, relating to, or affirming existence', word1.id, nil)
      def1.save()
      def2 = Definition.new('grounded in existence or the experience of existence', word1.id, nil)
      def2.save()
      def3 = Definition.new('having being in time and space', word1.id, nil)
      def3.save()
      expect(word1.definitions).to(eq([def1, def2, def3]))
    end
  end

end
