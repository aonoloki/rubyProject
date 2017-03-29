def get_int_values(n)
  n.times.map.with_index { |n|
    print "Enter value ##{ 1 + n }: "
    gets.chomp.to_i
  }
end

puts "Would you like to [add], [subtract], [divide] or [multiply]?"
response = gets.chomp

puts "How many values?"
num_of_values = gets.to_i

case response.downcase

when 'add'
  puts "Which numbers would you like to add?"
  operator = :+

when 'subtract', 'substract'
  puts "Which numbers would you like to subtract?"
  operator = :-

when 'divide'
  puts "Which numbers would you like to divide?"
  operator = :/

when 'multiply'
  puts "Which numbers would you like to multiply?"
  operator = :*

else
  puts "You may've done a mistake. Reboot and choose a right sentence."
  exit

end

answer = get_int_values(num_of_values).inject(operator)
puts "The answer is #{ answer }"
