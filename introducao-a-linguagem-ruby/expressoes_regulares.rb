"São 12 horas" =~ /\d+/ # 4 – retorna o índice onde encontra
"17/12/2006".gsub(/(.+)\/(.+)\/(.+)/, $3+"-"+$2+"-"+$1) # “2006-12-17”
