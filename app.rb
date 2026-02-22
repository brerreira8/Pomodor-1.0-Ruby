# Chamando as Gems
require_relative 'lib/cores'
require_relative 'lib/timer'

# limpa o terminal
system("clear") || system("cls")

puts "#{Cores::AMARELO}#{Cores::NEGRITO}---- RUBY POMODOR CLI ----#{Cores::RESET}"

# Intanciamos um timer de  minutos
meu_timer = Timer.new(25, 5)

loop do
  puts "\n#{Cores::NEGRITO}Pressione ENTER para iniciar o ciclo de foco...#{Cores::RESET}"
  gets

  meu_timer.executar(meu_timer.tempo_foco, "FOCO", Cores::VERMELHO)

  puts "\n#{Cores::VERDE}Excelente trabalho! Hora da pausa.#{Cores::RESET}"
  meu_timer.executar(meu_timer.tempo_pausa, "PAUSA", Cores::VERDE)

  print "\nCiclo concluído! Repetir ? (s/n): "
  break if gets.chomp.downcase != 's'
end

puts "#{Cores::AZUL}Até a próxima sessão! #{Cores::RESET}"