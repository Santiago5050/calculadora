require_relative 'binaryOperation'

class Sustraction < BinaryOperation
	def execute
		@result = @operand_1 - @operand_2
	end
end