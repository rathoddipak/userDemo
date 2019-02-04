require 'byebug'
#
class Hamming
  attr_accessor :str1, :str2

  def self.compute(string1, string2)
    @str1 = string1
    @str2 = string2
    raise ArgumentError if @str1.length > @str2.length || @str1.length < @str2.length
    @str1.chars.zip(@str2.chars).count { |a, b| a != b }
  end
end
