# encoding: utf-8

class Livro
	def initialize(autor, isbn = "1", numero_de_paginas)
		@autor = autor
		@isbn = isbn
		@numero_de_paginas = numero_de_paginas
	end

	def to_s
		"Autor: #{@autor}; ISBN: #{@isbn}; N. páginas: #{@numero_de_paginas}"
	end
end