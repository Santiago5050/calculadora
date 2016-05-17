require_relative 'unaryOperation'

class SquareRoot < UnaryOperation

	def execute
		@result = Math.sqrt(@operand)
	end
end