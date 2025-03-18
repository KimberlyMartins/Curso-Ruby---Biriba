#aula array****************

[]
puts [1,2,3]
["a" , 1]


puts []  #array vazio 


puts [1,2,3]

puts ["a", "b", "c"]

puts [1, "a", "2", 2, 2, 2 ]

puts "#{[1,2,3]}"
puts [1,2,3]
nomes = ["Rafael", "Lucas", "Roberto"]
        # 0/ -3       #1/ -2      #2/-1

puts "#{nomes}"

puts nomes [0]
puts nomes [1]
puts nomes [2]
puts nomes [3]

puts nomes [-3]
puts nomes [-4]


nomes = ["Rafael", "Lucas", "Roberto"]
        # 0/ =3       #1/ -2      #2/-1


numeros = [1,2,3,4,5]
         # 0 1 2 3 4

puts "Pontuação"

puts "#{nomes [0]} - #{numeros[2]}"  # Rafael - 3 
puts "#{nomes [2]} - #{numeros[4]}"  # Roberto -5



exemplo = [ 1,2,[4,5],6]   
           #0 1       3

puts exemplo [0] #1
puts exemplo [1] #2
puts exemplo [3] #6


puts exemplo [2] #[4,5]

novo_array = exemplo [2]
novo_array = [4,5]
             #0 1
puts "#{novo_array[0]}"
puts "#{novo_array[1]}"



a = 1 
b = "banana"             
c = 10.0

lista = [a,b,c]

puts lista [0]
puts lista [1]
puts lista [2]



a = 5
b = 10
c = 11
d = 15
e = 20
x = 10

puts "Valores #{[a, b*d, b*c, e/b, c-b]}"

exemplo = [["a", "b"] , ["c", "d"], ["e", "f"]]
#          0  0 1        1  0 1      2 0 1

puts  "#{exemplo [2] [1]}"
puts  "#{exemplo [0] [0]}"
puts  "#{exemplo [1] [0]}"
puts  "#{exemplo [0] [0]}"


puts "#{exemplo [2][1]} #{exemplo [0][0]} #{exemplo [1][0]}#{exemplo [0][0]}"



exemplo = [
    [1,2,["a", "b"]], # exemplo 0 
    [3,4, ["c","d"]]  #exemplo 1
]

exemplo = [
    [1,
     2,
    ["a", "b"]
    ], # exemplo 0 
    [3,
    4, 
    ["c","d"]]  #exemplo 1
]


exemplo = []
puts exemplo[0] #nil
exemplo[0] = "Rafael"
puts "#{exemplo}" # ["Rafael"]

exemplo[1] = 10
exemplo[2] = "Roberto"
puts "#{exemplo}" # ["Rafael", 10, "Roberto"]

exemplo[0] = 50
puts "#{exemplo}" # [50, 10, "Roberto"]







exemplo = []
exemplo << "Rafael"
exemplo << "Roberto"
exemplo << 2
puts "#{exemplo}" # ["Rafael", "Roberto", 2]


exemplo = ["a", "b"]
# index     0    1

exemplo[2] = "c"
exemplo << "d"
puts "#{exemplo}" # ["a", "b", "c", "d"]
