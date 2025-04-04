puts "Digite um número entre 1 e 10:"
numero = gets.to_i

if numero == 1
    puts "Parabéns! Você digitou o número correto (1)."
else
    puts "Você digitou o número errado (#{numero})."
end

puts "\nDigite outro número entre 1 e 10:"
numero = gets.to_i

# unless é o oposto do if, ou seja, executa o bloco se a condição for falsa.
unless numero == 3 # igual a if numero != 3
    puts "Você digitou o número errado (#{numero})."
else
    puts "Parabéns! Você digitou o número correto (3)."
end

puts ''

# Operadores de comparação no Ruby:
# == : Verifica se dois valores são iguais.
# != : Verifica se dois valores são diferentes.
# >  : Verifica se o valor à esquerda é maior que o valor à direita.
# <  : Verifica se o valor à esquerda é menor que o valor à direita.
# >= : Verifica se o valor à esquerda é maior ou igual ao valor à direita.
# <= : Verifica se o valor à esquerda é menor ou igual ao valor à direita.
# <=> : Operador "spaceship", retorna -1, 0 ou 1 dependendo da comparação.
# === : Usado em casos específicos, como em expressões case.
# eql? : Verifica se dois objetos são do mesmo tipo e têm o mesmo valor.
# equal? : Verifica se dois objetos são exatamente o mesmo objeto na memória.
# =~ : Verifica se uma string ou símbolo corresponde a uma expressão regular.
# !~ : Verifica se uma string ou símbolo NÃO corresponde a uma expressão regular.

# Operadores lógicos no Ruby:
# and : Operador lógico "E", retorna verdadeiro se ambas as condições forem verdadeiras.
# or  : Operador lógico "OU", retorna verdadeiro se pelo menos uma condição for verdadeira.
# not : Operador lógico "NÃO", inverte o valor lógico da condição.
# &&  : Operador lógico "E" (prioridade maior que and).
# ||  : Operador lógico "OU" (prioridade maior que or).
# !   : Operador lógico "NÃO" (prioridade maior que not).
# 
# Exemplos de operadores lógicos:
a = true
b = false
puts a && b # false
puts a || b # true
puts !a     # false
puts (not a) # false

# Operador ternário:
# Condição ? valor_se_verdadeiro : valor_se_falso
# Exemplo:
puts "\nDigite um número:"
numero = gets.to_i
resultado = numero > 10 ? "Maior que 10" : "Menor ou igual a 10"
puts resultado # "Menor ou igual a 10"
puts "Você digitou 10!" if numero == 10

# Case:
# O case é uma estrutura de controle que permite comparar um valor com várias opções.
# Exemplo:
puts "\nDigite um número entre 1 e 5:"
numero = gets.to_i

case numero
when 1
    puts "Você digitou 1."
when 2
    puts "Você digitou 2."
when 3
    puts "Você digitou 3."
when 4
    puts "Você digitou 4."
when 5
    puts "Você digitou 5."
else
    puts "Número inválido."
end

# O case pode ser usado com ranges, classes e expressões regulares.
# Exemplo com ranges:
puts "\nDigite uma letra entre a e e:"
letra = gets.chomp

case letra
when 'a'..'e'
    puts "Você digitou uma letra entre a e e."
else
    puts "Você digitou uma letra fora do intervalo."
end

# Exemplo com classes:
puts "\nDigite um número:"
numero = gets.to_i

case numero
when Integer
    puts "Você digitou um número inteiro."
when Float
    puts "Você digitou um número decimal."
else
    puts "Você digitou outro tipo de dado."
end

# Exemplo com expressões regulares:
puts "\nDigite um e-mail:"
email = gets.chomp
case email
when /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    puts "Você digitou um e-mail válido."
else
    puts "Você digitou um e-mail inválido."
end

# O case é uma estrutura de controle muito útil para simplificar o código e torná-lo mais legível.
# A estrutura case é uma alternativa ao if-elsif-else, especialmente quando há muitas condições a serem verificadas.
# Ela torna o código mais limpo e fácil de entender.
# Além disso, o case pode ser usado com ranges, classes e expressões regulares, tornando-o ainda mais versátil.
