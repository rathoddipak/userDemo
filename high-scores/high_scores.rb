# Exercism 4
class HighScores
  attr_accessor :scores, :latest, :personal_best, :personal_top, :report

  def initialize(scores = [])
    @scores = scores
    @personal_best = scores.max
    @latest = scores.last
    @personal_top = scores.size >= 3 ? scores.sort.reverse.first(3) : scores.sort.reverse
    @report = "Your latest score was #{latest}. #{report_score}"
  end

  def report_score
    personal_best == latest ? "That's your personal best!" :
    "That's #{personal_best - latest} short of your personal best!"
  end
end
