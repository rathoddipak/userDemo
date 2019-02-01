# exercism 3
# test acronym
class Acronym
  def self.abbreviate(string_to_acronym)
    string_to_acronym.split(/\W+/).map { |word| word[0] }.join.upcase
  end
end
