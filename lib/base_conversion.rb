module BaseRange
  BASE_62 = ('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a
  BASE_2 = [0, 1]
  BASE_16 = ('0'..'9').to_a + ('a'..'e').to_a
  BASE_26 = ('A'..'Z').to_a
end

class BaseConversion

  # Expected params
  #  - base = base converting to. E.g. 2 (binary), 16 (hex), 26 (alphabetical)
  #  - range = range to convert each placement to
  #            e.g. ('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a
  def initialize(base, range)
    @base = base
    @range = range
  end

  def convert_to_string(number)
    value = []
    while number > 0
      remainder = number % @base
      value.unshift @range[remainder]
      number = number / @base
    end
    value.join
  end

  def convert_to_number(string)
    number = 0
    string.split(//).each_with_index do |value, index|
      value = value.to_i if value.match /\d/
      number += @range.index(value) * (@base ** (string.length - index - 1))
    end
    number
  end
end
