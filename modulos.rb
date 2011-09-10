module Nomeavel
  attr_accessor :nome
  def ola
    puts "Olá #{@nome}";
  end
end

class Computador
  attr_accessor :hd
end

class Robo < Computador
  include Nomeavel
end

r2d2 = Robo.new
r2d2.hd = 4
r2d2.nome = "R2D2"
r2d2.ola # "Olá R2D2"
