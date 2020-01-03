require('rspec')
require('word.rb')

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
      word = Word.new('existential', nil)
      word.save()
      expect(Word.all()).to(eq([word]))
    end
  end

  describe('#==') do
    it('is the same word if it has the same attributes as another word') do
      word = Word.new('existential', nil)
      word_to_compare = Word.new('existential', nil)
      expect(word).to(eq(word_to_compare))
    end
  end

  describe('.clear') do
    it('clears all words') do
      word = Word.new('existential', nil)
      word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('finds a word by id') do
      word = Word.new('existential', nil)
      word.save()
      another_word = Word.new('misinformation', nil)
      another_word.save()
      expect(Word.find(word.id)).to(eq(word))
    end
  end

  describe('.search_text') do
    it('finds a word by text') do
      word = Word.new('existential', nil)
      word.save()
      expect(Word.search_text(word.text)).to(eq([word]))
    end
  end

  describe('#update') do
    it('updates a word') do
      word = Word.new('existential', nil)
      word.save()
      word.update('rutabaga')
      expect(word.text).to(eq('rutabaga'))
    end
  end

  describe('#delete') do
    it('deletes a word by id') do
      word = Word.new('existential', nil)
      word.save()
      another_word = Word.new('misinformation', nil)
      another_word.save()
      word.delete()
      expect(Word.all()).to(eq([another_word]))
    end
  end

  # describe('#definitions') do
  #   it("returns a word's definitions") do
  #     word = Word.new('existential', nil)
  #     word.save()
  #     definition = Definition.new("of or relating to existence", nil)
  #     definition.save()
  #     another_definition = Definition.new("of, relating to, or characteristic of philosophical existentialism; concerned with the nature of human existence as determined by the individual's freely made choices", nil)
  #     another_definition.save()
  #     expect(album.definitions).to(eq([definition, another_definition]))
  #   end
  # end

end
