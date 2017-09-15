class Word
  @@words = []
  attr_reader(:word)
  attr_accessor(:definitions)
  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definitions = {}
  end

  def self.all()
    @@words
  end

  def save()
    @@words.push(self)
  end

  def add_definition(definition)
    @definitions = definition
  end

  def self.find_word(search_word)
    @@words.each do |word|
      if word.word == search_word
        return word
      end
    end
  end

  def self.empty()
    @@words = []
  end

end
