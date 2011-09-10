status = 2

case(status)
  when 1
    p "Iniciando"
  when 2
    p "No meio"
  when 3
    p "Finalizando"
end

a = 11

case(a)
  when 1..5
    p "Entre 1 e 5"
  when 6..10
    p "Entre 6 e 10"
  when 11..20
    p "Entre 11 e 20"
end
