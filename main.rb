require './lib/LinkedList'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts list

list.pop

puts list

(0...list.size).each do |n|
  puts "Index #{n} contains #{list.at(n).value}"
end

puts list.contains?("turtle")
puts list.contains?("cat")
puts list.find("dog")
puts list.find("hamster")

puts list
list.insert_at('rabbit', 0)
puts list

puts list 
list.remove_at(0)
puts list
list.remove_at(2)
puts list