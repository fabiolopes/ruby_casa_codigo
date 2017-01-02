class Relatorio

	def initialize(biblioteca)
		@biblioteca = biblioteca
	end

	def total
		@biblioteca.livros.inject(0) { |tot, livro| tot += livro.valor }
	end

	#def total
	#	@biblioteca.livros.each do |livro|
	#		soma += livro.valor
	#	end
	#
	#	soma
		
	#end

end