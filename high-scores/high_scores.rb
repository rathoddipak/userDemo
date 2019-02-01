# Exercism 4

class HighScores
  def initialize(scores)
    @scores = scores
  end
  
  def scores
    @scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top
    # @scores.sort
    @scores.sort.reverse[0..2]
  end

  def report
    d = "#{personal_best - latest} short of" if personal_best != latest
    "Your latest score was #{latest}. That's #{d} your personal best!".squeeze
  end
end
