"ruby".length # 4
"ruby".send(‘length’) # 4

1 + 1 # 2 – usando a operação “literal”
1.+(1) # 2 – acessando o método “+” do objeto Fixnum
1.send(‘+’,1) # 2 – enviando a mensagem “+”

"Hello " + "World" # "Hello World"

"Ho! " * 3 # "Ho! Ho! Ho!"

[1,2] * 2 # [1,2,1,2]
[1,2,3,4,5] – [2,4] # [1,3,5] – Wow
["a","b","c"] – ["a"] # [“b”, “c”]
