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

end
