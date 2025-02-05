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