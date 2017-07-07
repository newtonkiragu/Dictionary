require('rspec')
require('dictionary')

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

  describe("#all") do
    it('add a word to the array of saved words') do
      my_word = Word.new({:word => 'Nirvana'}).save
      expect(Word.all()).to(eq(my_word))
    end
  end

  describe('.clear') do
    it('empties out the array of saved words') do
      my_word = Word.new({:word => 'Nirvana'}).save
      my_word.clear
      expect(Word.all()).to(eq([]))
    end
  end
end
