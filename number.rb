tries = 5
i     = 1
from  = 1
to    = 10

random_number = rand(from...to)

title = "Здравейте! Познайте числото в диапазон #{from} до #{to}. Брой опити: #{tries}."

puts "\n" + title

title.size.times do
  print "-"
end

puts "\n\n"

print "Опит: #{i}: Въведи число: "
number = gets.chomp

while i < tries do

  if( number.to_i == random_number)
    puts "Познахте! Числото е #{random_number}"
    break
  else
    hint = random_number > number.to_i ? "голямо" : "малко"
    puts "\nЧислото е по-#{hint} от #{number.to_i}"
    print "Опит: #{i+1}: Опитай пак: "
    number = gets.chomp
  end

  i += 1

  if(i == tries)
    puts "\nНе познахте! Числото беше: #{random_number}"
  end
end
