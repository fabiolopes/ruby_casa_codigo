class Biblioteca
	attr_reader :livros

	def initialize
		@livros = {}
		adiciona Livro.new "Testes", "Zé Maria", '1234', 112, 23, :teste
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

	def livros_por_categoria(categoria, bloco_com_p, bloco_com_puts)
		@livros[categoria].each do |livro|
			bloco_com_p.call livro
			bloco_com_puts.call livro
		end
	end

	
end