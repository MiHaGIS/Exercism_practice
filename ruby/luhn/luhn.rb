class Luhn

  def self.valid?(number)
    chararray = number.gsub(/\s+/, "").chars
    return false unless inputcheck?(chararray)
    numarray = chararray.map(&:to_i)
    reversed = numarray.reverse
    doubled = reversed.each_with_index.map { |d,i| i % 2 == 0 ? d : d*2 }
    minused = doubled.map { |n| n>9 ? n-9 : n}
    total = minused.reduce(0,:+)
    total % 10 == 0
  end

  def self.inputcheck?(input)
    input.all? { |i| i =~ /[0-9]/ } && input.length > 1
  end

end
