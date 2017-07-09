require('rspec')
require('word')

describe(Word) do
  before() do
    Word.clear
  end

  describe('.all') do
    it('checks if words array is empty at first') do
      Word.all
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('add a word to the array of saved words') do
      my_word = Word.new('Nirvana').save
      expect(Word.all()).to(eq(my_word))
    end
  end

  describe('.clear') do
    it('empties out the array of saved words') do
      my_word = Word.new('Nirvana').save
      my_word.clear
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#word') do
    it('displays saved words') do
      my_word = Word.new('Nirvana')
      my_word.save
      expect(my_word.word).to(eq('Nirvana'))
    end
  end

  describe(".find") do
    it("returns a word by its id number") do
      my_word = Word.new('Nirvana')
      my_word.save
      my_word2 = Word.new('Moksha')
      my_word2.save
      expect(Word.find(my_word.id)).to(eq(my_word))
    end
  end

  describe("#id") do
    it('returns a words id') do
      my_word = Word.new('Nirvana')
      my_word.save
      expect(my_word.id).to(eq(1))
    end
  end
end
