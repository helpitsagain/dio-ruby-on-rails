a = 1
puts a.class

b = 1.1
puts b.class

c = a + "8".to_i
puts c.class

puts 1.class
puts 1.1.class
puts true.class
puts false.class
puts "".class
puts :simbolo.class
hash = {}
puts hash.class
puts [].class
puts (1..2).class

=begin
Ruby é uma linguagem fortemente tipada, logo,
operações não devem acontecer entre tipos incompatíveis.

puts 1 + 1.1   # output: 2.1
puts 1 + "1.1" # output: String can't be coerced into Integer (TypeError)
=end