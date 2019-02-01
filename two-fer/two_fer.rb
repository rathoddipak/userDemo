class TwoFer
    def self.two_fer(x = "you")
        p "One for #{x}, one for me."
    end
end
TwoFer.two_fer("Alice")



# exercism 3
class Acronym
    def abbreviate(str)
      str.split(/\W+/).map { |word| word[0] + word.internal_caps }.join.upcase
    end
  end