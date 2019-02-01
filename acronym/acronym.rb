# exercism 3
class Acronym
  def self.abbreviate(str)
    str.split(/\W+/).map { |word| word[0] }.join.upcase
  end
end
