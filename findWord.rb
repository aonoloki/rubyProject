words = [ "alias",
  "coder",
  "dechu",
  "entre",
  "furax",
  "gages",
  "hobby",
  "icone",
  "joker",
  "kepis",
  "laver",
  "malin",
  "noyau",
  "octet",
  "proxy",
  "rails",
  "soner",
  "table",
  "utile",
  "voyou",
  "watts",
  "zeste"
]

try = 10
userWin = false
guessThis = words.sample

def spaceBetween
  puts "\n"
end

puts "Voici un jeu où tu devra deviner un mot de 5 lettres !"
puts "Tu as 10 essais pour trouver le bon mot. Bonne chance !"
puts "\n" * 3

while userWin == false && try > 0 do try -=1
  print "Entrer le mot de 5 lettres: "
  guess = gets.chomp
  if guess.length != 5
    puts "Le mot ne fait pas 5 lettres."
  else
    puts "Est-ce le bon mot ?"
  end
  if guess != guessThis
    if try > 1
      puts "Mauvais mot, essaye encore. Il te reste #{try} essais !"
      if try == 8
        intOne = guessThis[0..0]
        puts "Indice -> #{intOne}"
      elsif try == 6
        intTwo = guessThis[0..1]
        puts "Indice -> #{intTwo}"
      elsif try == 4
        intThree = guessThis[0..2]
        puts "Indice -> #{intThree}"
      elsif try == 2
        intFour = guessThis[0..3]
        puts "Indice -> #{intFour}"
      end
      spaceBetween
    elsif try == 1
      puts "Mauvais mot, essaye encore. Plus qu'un seul essai !"
      spaceBetween
    else
      puts "Dommage.. Le mot était \"#{guessThis}\". Game Over !"
    end
  else
    userWin = true
    puts "Le mot à trouver était bien \"#{guessThis}\" ! Ton score est de #{try}/10, GG WP !"
  end
end
