class Calcul
  attr_accessor :value1, :value2
  def initialize(value1, value2)
    @value1 = value1
    @value2 = value2
  end

  def add
    puts @value1 + @value2
  end

  def subs
    puts @value1 - @value2
  end
end

c = Calcul.new(27, 13)

puts c.inspect
puts "Is the a1ddtion off these numbers #{ c.add }."
puts "Is the substract of these numbers #{ c.subs }."
