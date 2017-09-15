require('rspec')
require('word_definer')

describe("Word") do
  it ("creates instance of word class when given a word") do
    villain = Word.new({:word => "villain"})
    expect(villain.word).to(eq("villain"))
  end
end

describe(".all") do
  it("can return a list of all saved words, empty at first") do
    expect(Word.all).to(eq([]))
  end
end

describe(".save") do
  it("saves each word into a list of words") do
    villain = Word.new({:word => "villain"})
    villain.save()
    hero = Word.new({:word => "hero"})
    hero.save()
    expect(Word.all).to(eq([villain, hero]))
  end
end

describe("#defintion") do
  it("adds definition to word") do
    villain = Word.new({:word => "villain"})
    villain.add_definition("a character whose evil actions or motives are important to the plot")
    expect(villain.definitions).to(eq("a character whose evil actions or motives are important to the plot"))
  end
end
