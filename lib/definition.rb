class Definition

  attr_reader :id
  attr_accessor :text, :word_id

  @@definitions = {}
  @@total_rows = 0

  def initialize(text, word_id, id)
    @text = text
    @word_id = word_id
    @id = id || @@total_rows += 1
  end

  def self.all()
    @@definitions.values()
  end

  def save()
    @@definitions[self.id] = Definition.new(self.text.downcase(), self.word_id, self.id)
  end

  def self.clear()
    @@definitions = {}
  end

  def ==(definition_to_compare)
    (self.text() == definition_to_compare.text()) && (self.word_id() == definition_to_compare.word_id())
  end

  def self.find(id)
    @@definitions[id]
  end

  def update(text, word_id)
    self.text = text
    self.word_id = word_id
    @@definitions[self.id] = Definition.new(self.text, self.word_id, self.id)
  end

  def delete
    @@definitions.delete(self.id)
  end

  def self.find_by_word(wrd_id)
    definitions = []
    @@definitions.values().each do |definition|
      if definition.word_id == wrd_id
        definitions.push(definition)
      end
    end
    definitions
  end

  def word
    Word.find(self.word_id)
  end

end
