require_relative 'unaryOperation'

class Square < UnaryOperation

	def execute
		@result = @operand * @operand
	end

end