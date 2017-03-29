print "Choisir un chiffre à deviner: "
i = gets.chomp
x = ""
puts "\n" * 50

while i != x
  print "Quel est le chiffre ? "
  x = gets.chomp
  if i < x
    puts "Le chiffre entré est au dessus du chiffre à deviner !"
  elsif i > x
    puts "Le chiffre entré est en dessous du chiffre à deviner !"
  else
    puts "Le chiffre était bien #{i} ! GG WP !!"
  end
end
