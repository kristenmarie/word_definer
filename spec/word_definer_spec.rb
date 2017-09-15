require('rspec')
require('word_definer')

describe("Word") do
  it ("creates instance of word class when given a word") do
    villain = Word.new({:word => "villain"})
    expect(villain.word).to(eq("villain"))
  end
end
