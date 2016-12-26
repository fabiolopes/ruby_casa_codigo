# encoding: utf-8

class Livro
	def initialize(autor, isbn = "1", numero_de_paginas, preco)
		@autor = autor
		@isbn = isbn
		@numero_de_paginas = numero_de_paginas
		@preco = preco
	end

	def to_s
		"Autor: #{@autor}; ISBN: #{@isbn}; N. páginas: #{@numero_de_paginas}; Preço: #{@preco}"
	end

	def preco
		@preco
	end

	def preco=(preco)
		@preco = preco
	end
end