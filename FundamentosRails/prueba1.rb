puts "Ruby! " * 2 #Ruby! Ruby! 
puts "Chunky" << "Bacon" #ChunkyBacon
puts "Chunky"[2..3] #"un"
puts "ruBy".capitalize #Ruby
puts "".empty? #true
puts "team".include?("i") #false
puts "team".include?("m") #true
puts "matz".length #4

puts "hola" if 0 #hola
puts "hola" if "" #hola 
puts "hola" if nil #nil

puts "adios" if false #nil
puts "adios" if nil #nil
puts "adios" if [] #adios

puts "ruby" unless 0 #nil
puts "ruby" unless "" #nil
puts "ruby" unless nil #ruby

puts "matz" unless false #matz
puts "matz" unless nil #matz
puts "matz" unless [] # nil 
