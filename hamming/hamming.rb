#
class Hamming
  attr_accessor :string1, :string2
  def initialize
    @string1 = ''
    @string2 = ''
  end

  def self.compute(string1, string2)
    string1 = string1
    string2 = string2
    raise ArgumentError if string1.length != string2.length
    string1.chars.zip(string2.chars).count { |a, b| a != b }
  end
end
