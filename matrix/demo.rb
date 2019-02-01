class Matrix
  def initialize(text)
    @rows = text.split("\n").map{|row| row.split(' ').map(&:to_i)}
    @columns = rows.transpose
  end
  #  attr_reader :rows, :columns

end

a = Matrix.new('1 2 3\n 4 5 6\n 7 8 9')
puts a.rows[0]
puts a.columns