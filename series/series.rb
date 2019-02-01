# require 'byebug'
# exercism 5
class Series
  attr_accessor :slice_string
  def initialize(slice_string)
    @slice_string = slice_string.chars
  end

  def slices(slice_of_size)
    raise ArgumentError if slice_of_size > @slice_string.length
    @slice_string.each_cons(slice_of_size).map(&:join)
  end
end
