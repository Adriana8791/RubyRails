@@ -1,6 +1,10 @@
=begin
puts [1,2,3,4,5].select { |elem| elem.even?} # [2, 4] 
puts Array.new(3) #[nil,nil,nil]
puts Array.new(4,true) #[true,true,true,true]
Array.new(4,2).reject { |elem| elem.even? } #[]
puts (1..5).to_a # 1,2,3,4,5
puts (1...5).to_a # 1,2,3,4 
puts (1...5).to_a # 1,2,3,4
=end
numeros=[2,4,6,8]
puts numeros.reject {|elemento| elemento >5 } # retorna un arreglo contrario a lo que se evalue