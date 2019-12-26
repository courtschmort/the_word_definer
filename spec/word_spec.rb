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

  describe('.find_by_id') do
    it('finds a word by id') do
      word = Word.new('existential', nil)
      word.save()
      another_word = Word.new('misinformation', nil)
      another_word.save()
      expect(Word.find_by_id(word.id)).to(eq(word))
    end
  end

  describe('.find_by_word') do
    it('finds a word by word') do
      word = Word.new('existential', nil)
      word.save()
      expect(Word.find_by_word(word.word)).to(eq(word))
    end
  end

end
