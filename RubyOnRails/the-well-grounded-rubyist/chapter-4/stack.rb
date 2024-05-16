require_relative 'stacklike'

class Stack
  include Stacklike
end

# Criando uma instância de Stack
s = Stack.new

# Adicionando elementos à pilha
s.add_to_stack("Elemento 1")
s.add_to_stack("Elemento 2")
s.add_to_stack("Elemento 3")

# Exibindo a pilha
puts "Pilha atual: #{s.stack}"

# Removendo um elemento da pilha
removed_element = s.take_from_stack
puts "Elemento removido: #{removed_element}"

# Exibindo a pilha após a remoção
puts "Pilha após remoção: #{s.stack}"