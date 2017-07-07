require('rspec')
require('dictionary')

describe(Word) do
  describe('.all') do
    it('checks if words array is empty at first') do
      Word.all
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#all") do
    it('add a word to the array of saved words') do
      my_word = Word.new('Nirvana')
      my_word.save
      expect(Word.all()).to(eq([my_word]))
    end
  end

  describe('.clear') do
    it('empties out of the saved words') do
      my_word = Word.new('Nirvana')
      my_word.save
      expect(Word.clear()).to(eq([]))
    end
  end
end
