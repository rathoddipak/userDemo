#
class Isogram
  def self.isogram?(input)
    input.downcase.scan(/[a-zA-Z]/).uniq == input.downcase.scan(/[a-zA-Z]/)
  end
end
