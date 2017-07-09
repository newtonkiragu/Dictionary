class Word

  @@words = []

  define_method(:initialize) do |word|
    @word = word
    @definitions = []
    @id = @@words.length().+(1)
  end

  define_singleton_method(:all) do
    @@words
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_method(:word) do
    @word
  end

  define_method(:id) do
    @id
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_method(:definitions) do
    @definitions
  end

  define_method(:save_definition) do |definition|
    @definitions.push(definition)
  end

  define_singleton_method(:find) do |identification|
    found_word = nil
    @@words.each()do |word|
      if word.id().eql?(identification.to_i())
        found_word = word
      end
    end
    found_word
  end
end
