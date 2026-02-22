# Trazendo uma Gem
require_relative 'cores'

# Criando uma classe
class Timer
  def initialize(foco_minutos, pausa_minutos)
    @foco = foco_minutos * 60
    @pausa_minutos = pausa_minutos * 60
  end

  def executar(segundos, rotulo, cor)
    segundos.step(0, -1) do |restante|
      minutos = restante / 60
      seg = restante % 60

      # Contador inline
      print "\r#{cor} #{Cores::NEGRITO} [#{rotulo}] #{Cores::RESET} #{format('%02d:%02d', minutos,seg)}"

      # Barra de progresso visual
      barra = "█" * (restante / 15)
      print "#{Cores::AZUL}#{barra}#{Cores::RESET}".ljust(60)

      sleep 1
    end
    puts "\n" # Para pular linha
  end
  def tempo_foco; @foco; end
  def tempo_pausa; @pausa; end

end