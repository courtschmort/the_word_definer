class Definition

  attr_reader :id
  attr_accessor :text

  @@definitions = {}
  @@total_rows = 0

  def initialize(text, word_id, id)
    @text = text
    @word_id = word_id
    @id = id || @@total_rows += 1
  end

  def ==(definition_to_compare)
    (self.text() == definition_to_compare.text()) && (self.word_id() == definition_to_compare.word_id())
  end

  def self.clear()
    @@definitions = {}
  end

end
