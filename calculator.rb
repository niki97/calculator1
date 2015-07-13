require 'pry'
require 'csv'

class Calculator

	attr_reader :value1, :value2

	def initialize(val1, val2)
		@value1 = val1.to_i
		@value2 = val2.to_i
	end

	def add
		value1 + value2
	end

	def subtract
		value1 - value2
	end

	def multiply
		value1 * value2
	end

	def divide
		#if value2 == 0
		#	raise "argument cannot be divided by 0; please try again where value2 does not equal 0"
		#end
		value1.to_f / value2.to_f
	end

	private

	def log(message)
		puts(message)
	end

end

total_sum = 0
CSV.foreach("add_input.csv") do |row|
	calculator = Calculator.new(total_sum, row.first.to_i)
  total_sum = calculator.add
end

puts "Total Sum: #{total_sum}"

total_product = 1
CSV.foreach("multiply_input.csv") do |row|
	calculator = Calculator.new(total_product, row.first.to_i)
  total_product = calculator.multiply
end

puts "Total Product: #{total_product}"

total_difference = 0
CSV.foreach("subtract_input.csv") do |row|
	calculator = Calculator.new(total_difference, row.first.to_i)
  total_difference = calculator.subtract
end

puts "Total Difference: #{total_difference}"

total_quotient = nil
CSV.foreach("divide_input.csv") do |row|
	if total_quotient.nil?
		total_quotient = row.first.to_i
	else
		calculator = Calculator.new(total_quotient, row.first.to_i)
	  total_quotient = calculator.divide
	end
end

puts "Total Quotient: #{total_quotient}"


