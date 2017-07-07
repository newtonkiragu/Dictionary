require('rspec')
require('dictionary')

describe(Word) do
  describe('.all') do
    it('checks if words array is empty at first') do
      Word.all
      expect(Word.all()).to(eq([]))
    end
  end
end
