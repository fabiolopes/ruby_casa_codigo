class Biblioteca
	attr_reader :livros

	def initialize
		@livros = {}
		adiciona Livro.new "Testes", "Zé Maria" '1234', 112, 23, :teste
		adiciona Livro.new "Design", "Lula", '4321', 200, 55, :design
		adiciona Livro.new "Testes", "Ana Julia", '0090', 512, 53, :teste
	end
		
	def adiciona(livro)
		@livros[livro.categoria] ||= []
		@livros[livro.categoria] << livro
	end

	def livros
		@livros.values.flatten
	end

	def livros_por_categoria(categoria)
		@livros[categoria].each do |livro|
			yield livro if block_given?
		end
	end

	
end