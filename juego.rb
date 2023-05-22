# Identificarse para jugar
puts "Ingresa tu nombre para jugar"
nombre = gets.chomp.to_s

# Definir las opciones disponibles y sus números correspondientes
# El operador = se utiliza para asignar un valor a una variable en Ruby. Para definir claves y valores en un hash, se usa =>
opciones = {
    1 => "piedra",
    2 => "papel",
    3 => "tijera"
}

# Capturar elección del jugador como número
puts "Elige una opción: 1 para piedra, 2 para papel o 3 para tijera"
eleccion_jugador = gets.chomp.to_i

# Entregar error al jugador si no elige entre los números válidos
unless eleccion_jugador == 1 or eleccion_jugador == 2 or eleccion_jugador == 3
  puts "Ups! #{nombre}. Recuerda que debes elegir 1 para piedra, 2 para papel o 3 para tijera."
  exit
end

# Generar la elección del ordenador como número utilizando rand(1..3)
eleccion_pc = rand(1..3)

# Mostrar las elecciones
puts "#{nombre}: #{opciones[eleccion_jugador]}"
puts "Ordenador: #{opciones[eleccion_pc]}"

# Determinar el resultado del juego
if eleccion_jugador == eleccion_pc
  puts "¡Es un empate!"
elsif (eleccion_jugador == 1 && eleccion_pc == 3) or
      (eleccion_jugador == 2 && eleccion_pc == 1) or
      (eleccion_jugador == 3 && eleccion_pc == 2)
  puts "¡Ganaste! #{nombre}"
else
  puts "¡Perdiste #{nombre}!"
end
