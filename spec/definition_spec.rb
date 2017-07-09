require('rspec')
require('definition')

describe(Definition) do
  before() do
    Definition.clear
  end

  describe('#save') do
    it('it adds a definition to the definitions array') do
      my_word = Definition.new({:word => 'a state of pure bliss'})
      my_word.save
      expect(Definition.all).to(eq([my_word]))
    end
  end

  describe('.all') do
    it('checks if the dinitions array is empty') do
      expect(Definition.all).to(eq([]))
    end
  end

  describe('.clear') do
    it('clears out the array of saved definitions') do
      my_definition = Definition.new({:word => 'This is my definition'})
      my_definition.save
      expect(Definition.clear).to(eq([]))
    end
  end

  describe("#id") do
    it('returns the id of the definition') do
      my_definition = Definition.new({:word => 'This is my definition'})
      my_definition.save
      expect(my_definition.id).to(eq(1))
    end
  end

  describe('.find') do
    it('returns a definition by its id number') do
      my_definition = Definition.new({:word => 'This is my definition'})
      my_definition.save
      my_definition2 = Definition.new({:word => 'Pure bliss is my definition'})
      my_definition2.save
      expect(Definition.find(my_definition.id)).to(eq(my_definition))
    end
  end
end
