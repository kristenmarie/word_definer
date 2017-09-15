class Word
  attr_reader(:word)
  attr_accessor(:definitions)
  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definitions = {}
  end

end
