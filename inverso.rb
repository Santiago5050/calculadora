require_relative 'unaryOperation'

class Invers < UnaryOperation
	
	def execute
		@result = 1 / @operand
	end
end