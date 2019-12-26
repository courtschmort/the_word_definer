class Word

  attr_accessor :word, :id

  @@words = {}
  @@total_rows = 0

  def initialize(word, id)
    @word = word
    @id = id || @@total_rows += 1
  end

  def self.all()
    @@words.values().sort()
  end

  def save()
    @@words[self.id] = Word.new(self.word.downcase(), self.id)
  end

  def ==(word_to_compare)
    self.word() == word_to_compare.word()
  end

  def self.clear()
    @@words = {}
    @@total_rows = 0
  end

  def self.find_by_id(id)
    @@words[id]
  end

end
