require_relative 'unaryOperation'

class SquareRoot < UnaryOperation

	def execute
		@result = sqrt(@operand)
	end
end