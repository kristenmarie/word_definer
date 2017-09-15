require('rspec')
require('word_definer')

describe(".empty") do
  it("empties class array of words") do
    alligator = Word.new({:word => "alligator"})
    snake = Word.new({:word => "snake"})
    lizard = Word.new({:word => "lizard"})
    alligator.save()
    snake.save()
    lizard.save()
    expect(Word.empty()).to(eq([]))
  end
end

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
    expect(villain.definitions).to(eq(["a character whose evil actions or motives are important to the plot"]))
  end
end

describe(".find_word") do
  it("finds word object when given the word") do
    Word.empty()
    villain = Word.new({:word => "villain"})
    hero = Word.new({:word => "hero"})
    villain.save()
    hero.save()
    expect(Word.find_word("villain")).to(eq(villain))
  end
end
