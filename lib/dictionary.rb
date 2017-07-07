class Word
  @@word = []
  attr_reader = (:word)

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
  end

  define_singleton_method(:all) do
    @@word = []
  end
end
