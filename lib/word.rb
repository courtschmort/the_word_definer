class Word

  attr_accessor :text, :id

  @@words = {}
  @@total_rows = 0

  def initialize(text, id)
    @text = text
    @id = id || @@total_rows += 1
  end

  def self.all()
    @@words.values().sort_by(&:text)
  end

  def save()
    @@words[self.id] = Word.new(self.text.downcase(), self.id)
  end

  def ==(word_to_compare)
    self.text() == word_to_compare.text()
  end

  def self.clear()
    @@words = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@words[id]
  end

  def self.search_text(text)
    @@words.values().select { |word| /#{text}/.match? word.text }
  end

  def update(text)
    self.text = text
    @@words[self.id] = Word.new(self.text, self.id)
  end

  def delete()
    @@words.delete(self.id)
  end

  # def definitions()
  #   Definition.define(self.id)
  # end

end
