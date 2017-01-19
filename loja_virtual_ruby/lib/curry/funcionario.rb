class Funcionario
	attr_reader :funcionario
	def initialize(funcionario)
		@funcionario = funcionario
	end

	def ficha_funcionario(empresa)
		puts "O funcionário #{funcionario} trabalha na empresa #{empresa.nome}"
	end

end