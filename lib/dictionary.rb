class Word
  @@word = []
  attr_reader = (:word)

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @id = @@word.length().+(1)
  end

  define_singleton_method(:all) do
    @@word
  end

  define_singleton_method(:clear) do
    @@word = []
  end

  define_method(:save) do
    @@word.push(self)
  end
end
