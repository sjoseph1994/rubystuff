print "Enter a name of a fruit: "
grade = gets.chomp
case grade
when "apple"
  puts 'it\'s yummy!'
when "orange"
  puts 'Hmmmmmm'
when "Strawberry"
  puts "favourite!"
else
  puts "You owe me some fruits!"
end