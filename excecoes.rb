class ErroAbsurdo < Exception
end

def faz_algo
  raise ErroAbsurdo
end

begin
  faz_algo
rescue ErroAbsurdo # Caso ocorra o erro absurdo
  STDERR.puts "Ocorreu um erro absurdo!"
rescue Exception => e # Outro erro não especificado
  STDERR.puts e.message
end
