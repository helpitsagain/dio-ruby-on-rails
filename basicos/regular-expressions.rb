# Expressões Regulares em Ruby

# Expressões regulares (regex) são padrões usados para encontrar correspondências em strings
# ou partes de strings. Elas são ferramentas poderosas para processamento e validação de texto.

# Sintaxe Básica
# Uma regex é definida entre duas barras `/padrão/`.
# Operadores Comuns em Regex:
# - `.`  : Corresponde a qualquer caractere, exceto nova linha.
# - `*`  : Corresponde a zero ou mais ocorrências do padrão anterior.
# - `+`  : Corresponde a uma ou mais ocorrências do padrão anterior.
# - `?`  : Torna o padrão anterior opcional (zero ou uma ocorrência).
# - `\d` : Corresponde a qualquer dígito (0-9).
# - `\w` : Corresponde a qualquer caractere de palavra (letras, números e _).
# - `\s` : Corresponde a qualquer espaço em branco (espaço, tab, nova linha).
# - `^`  : Corresponde ao início da string.
# - `$`  : Corresponde ao final da string.
# - `[ ]`: Define uma classe de caracteres. Exemplo: `[aeiou]` corresponde a qualquer vogal.
# - `{n,m}`: Especifica o número de ocorrências. Exemplo: `a{2,4}` corresponde a "aa", "aaa" ou "aaaa".
# - `|`  : Operador lógico "ou". Exemplo: `ruby|python` corresponde a "ruby" ou "python".
# - `()` : Agrupa padrões e permite capturas. Exemplo: `(\d{4})-(\d{2})-(\d{2})`.
# - `?`  : Torna o padrão anterior opcional (zero ou uma ocorrência).
# - `\`  : Escapa caracteres especiais. Exemplo: `\.` corresponde a um ponto literal.

# Exemplo 1: Correspondência Simples
puts "Exemplo 1: Correspondência Simples"
puts /ruby/.match("Eu amo ruby!") # => #<MatchData "ruby">
puts /python/.match("Eu amo ruby!") # => nil

# Exemplo 2: Correspondência Insensível a Maiúsculas/Minúsculas
puts "\nExemplo 2: Correspondência Insensível a Maiúsculas/Minúsculas"
puts /ruby/i.match("Eu amo RUBY!") # => #<MatchData "RUBY">

# Exemplo 3: Usando o Operador =~
puts "\nExemplo 3: Usando o Operador =~"
puts "Eu amo ruby!" =~ /ruby/ # => 7 (índice da correspondência)
puts "Eu amo ruby!" =~ /python/ # => nil

# Exemplo 4: Classes de Caracteres
puts "\nExemplo 4: Classes de Caracteres"
puts /[aeiou]/.match("olá") # => #<MatchData "o"> (corresponde a qualquer vogal)
puts /[0-9]/.match("abc123") # => #<MatchData "1"> (corresponde a qualquer dígito)

# Exemplo 5: Quantificadores
puts "\nExemplo 5: Quantificadores"
puts /\d+/.match("abc123") # => #<MatchData "123"> (corresponde a um ou mais dígitos)
puts /a{2,}/.match("baaa") # => #<MatchData "aaa"> (corresponde a 'a' repetido 2 ou mais vezes)

# Exemplo 6: Âncoras
puts "\nExemplo 6: Âncoras"
puts /^olá/.match("olá mundo") # => #<MatchData "olá"> (corresponde no início da string)
puts /mundo$/.match("olá mundo") # => #<MatchData "mundo"> (corresponde no final da string)

# Exemplo 7: Grupos e Capturas
puts "\nExemplo 7: Grupos e Capturas"
if /(\d{4})-(\d{2})-(\d{2})/.match("2023-10-05")
    puts "Ano: #{$1}, Mês: #{$2}, Dia: #{$3}" # => Ano: 2023, Mês: 10, Dia: 05
end

# Exemplo 8: Substituição
puts "\nExemplo 8: Substituição"
puts "Eu amo ruby!".gsub(/ruby/, "Rails") # => "Eu amo Rails!"

# Exemplo 9: Validação
escreve_em_verde = "\e[32m"
escreve_em_vermelho = "\e[31m"
reset = "\e[0m"
puts "\nExemplo 9: Validação"
puts "Digite um endereço de email para validação:"
email = gets.chomp
if /^[\w+\-.]+@[a-z\d\-.]+\.[a-z]+$/i.match(email)
    puts "#{escreve_em_verde}#{email} é um endereço de email válido.#{reset}"
else
    puts "#{escreve_em_vermelho}#{email} não é um endereço de email válido.#{reset}"
end

# Expressões regulares são uma ferramenta versátil para manipulação e validação de strings.
# Pratique e experimente para dominar seu uso!