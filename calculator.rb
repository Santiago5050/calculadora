require_relative 'division'
require_relative 'inverso'
require_relative 'multiplicacion'
require_relative 'raiz_cuadrada'
require_relative 'resta'
require_relative 'square'
require_relative 'sum'

class Calculator

	OPERATIONS = {
		sum: '+',
		substract: '-',
		inverse: 'INV',
		square: 'SQ',
		square_root: 'SQRT',
		division: '/',
		multiplication: '*'
	}
	
	def add_operand(operand)
		
		if @current_operation
			@current_operation.add_operand(operand)
		else
			@operand_temp = operand
		end
	end

	def set_operation(operator)
		operation_class = case operator
			when OPERATIONS[:sum] then Sum
			when OPERATIONS[:multiplication] then Multiplication
			when OPERATIONS[:substract] then Sustraction
			when OPERATIONS[:division] then Division
			when OPERATIONS[:inverse] then Invers
			when OPERATIONS[:square] then Square
			when OPERATIONS[:square_root] then SquareRoot
		end
		@current_operation = operation_class.new(@operand_temp)
		@operand_temp = ''
	end

	def	execute
		result = @current_operation.execute
		clear
		result
	rescue ZeroDivisionError
		'ERROR'
	end

	def	clear
		@current_operation = nil
		@operand_temp = nil
	end
end