require 'byebug'
#
class Phrase
  attr_accessor :str
  def initialize(str)
    @str = str
  end

  def word_count
    @str.scan(/\b[a-zA-Z0-9']+\b/).each_with_object(Hash.new(0)) do |key, value|
      value[key.downcase] += 1
    end
  end
end
word = Phrase.new('Hello Hiii Hello hiii HIII \'hiii\'')
puts word.word_count
