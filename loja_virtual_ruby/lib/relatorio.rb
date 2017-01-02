class Relatorio

	def initialize(biblioteca)
		@biblioteca = biblioteca
	end

	def total
		@biblioteca.livros.map(&:valor).inject(:+)
	end

	#A expressão &:titulo cria um bloco como este: { |livro| livro.titulo }. 
	#O character & invoca um método to_proc no objeto, e passa este bloco para o método map
	def titulos
		@biblioteca.livros.map &:titulo
	end

	#def titulos
	#	titulos = []
	#	@biblioteca.livros.each do |livro|
	#		titulos << livros.titulo
	#	end
	#
	#	titulos
	#end

	#def total
	#	@biblioteca.livros.each do |livro|
	#		soma += livro.valor
	#	end
	#
	#	soma
		
	#end

end