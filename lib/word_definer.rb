class Word
  @@words = []
  attr_accessor(:definitions, :word)
  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definitions = []
  end

  def self.all()
    @@words
  end

  def save()
    @@words.push(self)
  end

  def add_definition(definition)
    @definitions.push(definition)
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

  def self.sort()
    @@words = @@words.sort do |a,b|
      a.word <=> b.word
    end
  end

    def self.random()
      @@words.sample
    end

end
