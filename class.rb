class Aluno
  @@total = 0

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
    @@total += 1
  end

  def self.total
    @@total
  end
end

class Quadrado
  def initialize( lado )
    @lado = lado
  end
  
  def lado
    @lado
  end
  
  def lado=(novo_lado)
    @lado = novo_lado
  end
end

q = Quadrado.new(6)
puts q.lado # 6
q.lado = 15
puts q.lado # 15

# Reescrevendo a classe Quadrado

class Quadrado
  def initialize(lado)
    @lado = lado
  end

  attr_accessor :lado
end


class Turma
  def pega_alunos # pública
  end

  protected
  def pega_notas # protegida
  end

  private
  def pega_valores # privada
  end

end

class Equipe
  @@selecoes = []
  @@clubes = []

  def initialize(nome)
    @nome = nome
  end

  attr_accessor :nome

  def self.adiciona_time(time, tipo)
    if tipo == "selecao" then @@selecoes << time else @@clubes << time end
  end

  def self.selecoes
    @@selecoes
  end

  def self.clubes
    @@clubes
  end

  def self.total_de_equipes
    @@selecoes.size + @@clubes.size
  end
end


class Pai
  attr_accessor :nome
end

class Filho < Pai
end

joao = Filho.new
joao.nome = "João"
puts joao.nome # "João"



class Diz
  def initialize( nome )
    @nome = nome
  end
  def oi
    print "Oi,#{@nome}"
  end
end

Diz.new("João").oi # "João"

class DizEnfase < Diz
  def oi
    super
    print "!!!"
  end
end

DizEnfase.new("João").oi # "João"

#
# Abrindo uma classe
#

class Automovel
  def initialize( rodas )
    @rodas = rodas
  end
end

class Automovel
  def tem_quatro_rodas?
    @rodas == 4
  end
end
opala = Automovel.new(4)
puts opala.tem_quatro_rodas? # true

#
# Abrindo uma classe do Ruby
#

class String
  def plural?
    self[-1] == "s"
  end
end
