def tres_vezes
  yield
  yield
  yield
end
tres_vezes { print "!" }

x = ["nicolas", "jairo", "cristian", "cristiano"]
x.each_with_index {|item, index| puts item if index%2==0 }

x.each_with_index do |item, index| 
  puts item if index%2==0
end

def dois_parametros(a,b)
  yield(a,b)
end
dois_parametros(1,2) { |p1,p2| puts p1 + p2 } # 3
dois_parametros("A","B") { |p1,p2| puts p1 + p2 } # “AB”


turma = [
  {:name => "nicolas", :idade => 25}, 
  {:name => "jairo", :idade => 33}, 
  {:name => "cristian", :idade => 42}, 
  {:name => "cristiano", :idade => 25}, 
  {:name => "juan", :idade => 33}, 
  {:name => "carlos", :idade => 26}
]

turma.select {|membro| membro[:idade] <= 30 && membro[:name][0] == "c" } # idade menor que 30 e nome começa com C
turma.select {|membro| membro[:name].length <= 6 } # nome com menos de 7 letras

precos = [ 11, 2.3, 6.4 ]
precos_reajustados = precos.map { |preco| preco * 1.1 } # [12.1,2.53,7.04]

[1,2,3,4].inject {|x,y| x + y }

alunos = [
  {:nome => "João", :idade => 25, :cidade => "poa"},
  {:nome => "José", :idade => 17, :cidade => "guaíba" },
  {:nome => "Maria", :idade => 33, :cidade => "viamão" } 
]

maiores_de_poa = alunos.select do |aluno|
aluno.idade > 17 and aluno.cidade == “poa”
end
// {:nome => “José”, :idade => 25, :cidade => “poa”}
