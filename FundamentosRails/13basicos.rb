=begin 
=end

# 1 Escriba un programa que muestre todos los números del 1 al 255.
#puts (1..255).collect { |i| print i, ' ' }
for i in 1..255
    puts i
end

puts (1..255).collect { |i| print i, " " }

print (1..255).to_a.to_s

1.upto(255) { |i| print i, " " }

(1..255).each { |i| print i, ""}

while i <=255
    print i, " "
    i += 1
end

# 2 Escriba un programa que muestre todos los números impares del 1 al 255.
puts (1..255).find_all { |i| i.odd? }

puts (1..255).reject { |i| i.even? }.to_s

puts (1..255).select { |i| i % 2!=0}.to_s

for i in (1..255)
    puts i if i.odd?
end

# 3 Escriba un programa que muestre los números del 0 al 255, pero esta vez, muestre también la suma de los números que se han mostrado hasta el momento. Por ejemplo, tu programa debe mostrar algo como esto:
#Nuevo numero: 0 Suma: 0
#Nuevo numero: 1 Suma: 1
#Nuevo numero: 2 Suma: 3
#Nuevo numero: 3 Suma: 6

suma=0
(1..255).each do |dato|
puts "Nuevo numero: #{dato} Suma #{suma=suma+dato}"
end

suma=0
for i in 1..255
    puts "nuevo2 numero:#{i}suma:#{suma=suma+i}"
end

# 4 Dado un arreglo X, digamos [1, 3, 5, 7, 9, 13], escriba un programa que recorra cada elemento del arreglo y muestre su valor. Ser capaz de recorrer cada elemento de un arreglo es sumamente importante

x= [1, 3, 5, 7, 9, 13]
for i in x
puts "valor #{i}"
end  

x.each { |i| puts "con each #{i}" }

# 5 Escriba un programa (un conjunto de instrucciones) que tome cualquier arreglo y muestre el valor máximo del arreglo. Tu programa debe funcionar también con arreglos que tengan todos los números negativos (ejemplo [-3, -5, -7]), o incluso una combinación con números positivos, negativos y cero.
x = [1, 3, 5, 7, 9, 13]
puts x.max

def getMax arreglo
    yield arreglo.max
end

getMax(x) {|max| puts "el valor maximo es #{max}"}


# 6 Escriba un programa que tome un arreglo y muestre el PROMEDIO de los valores del arreglo. Por ejemplo para el arreglo [2, 10, 3] tu programa debe mostrar un promedio de 5. De nuevo, asegúrate de crear un caso base y escribe las instrucciones para resolver este caso primero, luego ejecuta tus instrucciones para otros casos más complicados. Puedes utilizar la función length para esta actividad.

x = [1, 3, 5, 7, 9, 13]
puts "El promedio es: #{x.sum/x.length}"


# 7 Escriba un programa que cree un arreglo "y" que contenga todos los números impares entre 1 y 255. Cuando el programa se complete, "y" debe tener los valores de [1, 3, 5, 7, ... 255].

puts (1..255).find_all { |i| i.odd? }.to_a.to_s

# 8 Escriba un programa que tome un arreglo y devuelva la cantidad de números que son mayores a un valor dado Y. Por ejemplo si el arreglo es [1, 3, 5, 7] y Y = 3, después de ejecutar tu programa debe mostrar 2 (debido a que hay 2 valores en el arreglo que son mayores a 3).

x= [1, 3, 5, 7] 
y = 3
mayores=0

for i in x
  if i > y
    mayores+=1
  end
end
puts mayores
def contar (*x)
    puts x.count {|i| i > x.last}
    end
contar '1','3','5','7','3'

def mayorQueY(arreglo,y)
    puts arreglo.count {|i| i > y}
end
mayorQueY [1, 3, 5, 7] , 3

puts "cantidad elementos: #{x.find_all {|i| i > y}.size} ; elementos #{x.find_all {|i| i > y}}" 

# 9 Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo (un conjunto e instrucciones) que multiplique cada valor en el arreglo por si mismo. Cuando el programa termine, el arreglo x debe tener valores que han sido elevados al cuadrado, es decir [1, 25, 100, 4].

puts [1, 5, 10, -2].collect { |x| x*x }.to_s

arreglo=[1, 5, 10, -2]
array =[]
for i in arreglo
    array.push(i*i)
end
puts array.to_s

# 10 Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que reemplace cualquier número negativo con 0. Cuando el programa termine, x no debe tener valores negativos, es decir [1, 5, 10, 0].

arreglo= [1, 5, 10, -2]

=begin
#este for no sirve para trabajar con posiciones 
for elemento in arreglo
    if elemento < 0
    
    end
end
=end

#este for sirve para trabajar con posiciones
for indice in 0..arreglo.size-1
    if arreglo[indice] < 0
        puts "El elemento #{indice} es negativo"
        arreglo[indice] = 0
    end
end

arreglo.each_with_index do |elemento,indice|
    if elemento < 0
        arreglo[indice]=0
    end
end

# 11 Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que devuelva un hash con el valor máximo, el valor mínimo y el promedio de los valores en el arreglo.

arreglo = [1, 5, 10, -2]
puts "maximo #{arreglo.max}; minimo #{arreglo.min}; promedio #{arreglo.sum/arreglo.length}"

# 12 Dado un arreglo x, cree un algoritmo que cambie cada número del arreglo por el número que hay en la siguiente posición. Por ejemplo, dado el arreglo [1, 5, 10, 7, -2], cuando el programa termine, este arreglo debe ser [5, 10, 7, -2, 0].

arreglo= [1, 5, 10, 7, -2] #[5, 10, 7, -2, 0]
arreglo.delete_at(0)
arreglo.push(0)
puts "arreglo #{arreglo}"

arreglo= [1, 5, 10, 7, -2]
puts arreglo.slice(1,arreglo.size-1).push(0).to_s

# 13 Escriba un programa que tome un arreglo de números y reemplace cualquier número negativo con la palabra "Dojo". Por ejemplo, dado el arreglo x = [-1, -3, 2], después que el programa haya terminado, ese arreglo debe ser ['Dojo', 'Dojo', 2].

#usar de base las respuestas del ejercicio 10
arreglo = [-1, -3, 2]
arreglo.each_with_index do |elemento,indice|
    if elemento < 0
        arreglo[indice]='Dojo'
    end
end
puts arreglo.to_s
