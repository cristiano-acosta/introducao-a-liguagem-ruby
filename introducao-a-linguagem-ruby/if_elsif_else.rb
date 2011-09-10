def aprovado? nota
  nota > 6
end

def reprovado? nota
  nota < 3
end

def recuperacao? nota
  nota.between?(3..6)
end

def resultado_do_aluno nota
  if nota > 6
    puts "Aprovado!"
  elsif nota > 3
    puts "Recuperação"
  else
    puts "Reprovado"
  end
end

def pode_dirigir? idade
  "Sim" if idade >= 18
end

def pode_votar? idade
  idade >= 17 ? "Sim" : "Não"
end
