curso = "Ruby"
curso.class

curso2 = "#{curso} on Rails"
curso2.class

descricao = <<heredoc

Aqui vai a um texto.

heredoc
descricao.class

idade = 18
idade.class

hexa = 0x10
hexa.class

pi = 3.14
pi.class

cores = [ “vermelho”, ”branco” ]
cores.class

cores = %w{ vermelho branco rosa }
cores.class

numeros = /\d+/
numeros.class

aluno = { :nome => “João”, :idade => 16 }
aluno.class

aprovados = 6..10
aprovados.class
