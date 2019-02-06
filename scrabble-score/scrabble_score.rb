#
class Scrabble
  attr_accessor :string, :scrabble_score
  def initialize(string)
    @string = string
    @scrabble_score = {
      'a' => 1, 'b' => 3, 'c' => 3, 'd' => 2, 'e' => 1, 'f' => 4, 'g' => 2,
      'h' => 4, 'i' => 1, 'j' => 8, 'k' => 5, 'l' => 1, 'm' => 3, 'n' => 1,
      'o' => 1, 'p' => 3, 'q' => 10, 'r' => 1, 's' => 1, 't' => 1, 'u' => 1,
      'v' => 4, 'w' => 4, 'x' => 8, 'y' => 4, 'z' => 10
    }
  end

  def self.score(str)
    new(str).score
  end

  def score
    total_score = 0
    word = string.to_s.downcase.split('')
    word.each do |char|
      total_score += scrabble_score[char].to_i
    end
    total_score
  end
end
