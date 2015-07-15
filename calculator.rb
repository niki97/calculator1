require 'pry'
require 'csv'

class Calculator

	attr_reader :value1, :value2, :answer

	def initialize(val1, val2)
		@value1 = val1.to_i
		@value2 = val2.to_i
		@answer = answer

	end


	def add
		print "What is the first value you want to add? "
		value1 = gets.to_i

		print "What is the second value you want to add? "
		value2 = gets.to_i

		puts "The sum is... #{value1 + value2}"
		# answer = value1 + value2
		# puts "sum: #{answer}"
	end

	def subtract
		print "What is the first value you want to subtract? "
		value1 = gets.to_i

		print "What is the second value you want to subtract? "
		value2 = gets.to_i

		puts "The difference is... #{value1 - value2}"
		# answer = value1 - value2
		# puts "difference: #{answer}"
	end

	def multiply
		print "What is the first value you want to multiply? "
		value1 = gets.to_i

		print "What is the second value you want to multiply? "
		value2 = gets.to_i

		puts "The product is... #{value1 * value2}"
		# answer = value1 * value2
		# puts "product: #{answer}"
	end

	def divide
		print "What is the first value you want to divide? "
		value1 = gets.to_i

		print "What is the second value you want to divide? "
		value2 = gets.to_i

		puts "The quotient is... #{value1 / value2}"
		#if value2 == 0
		#	raise "argument cannot be divided by 0; please try again where value2 does not equal 0"
		#end
		# answer = value1 / value2
		# puts "quotient: #{answer}"
	end

	private

	def log(message)
		puts(message)
	end

end




calculator = Calculator.new(ARGV[0], ARGV[0])
calculator.add
calculator.subtract
calculator.multiply
calculator.divide


# total_sum = 0
# CSV.foreach("add_input.csv") do |row|
# 	calculator = Calculator.new(total_sum, row.first.to_i)
#   total_sum = calculator.add
# end

# puts "Total Sum: #{total_sum}"

# total_product = 1
# CSV.foreach("multiply_input.csv") do |row|
# 	calculator = Calculator.new(total_product, row.first.to_i)
#   total_product = calculator.multiply
# end

# puts "Total Product: #{total_product}"

# total_difference = 0
# CSV.foreach("subtract_input.csv") do |row|
# 	calculator = Calculator.new(total_difference, row.first.to_i)
#   total_difference = calculator.subtract
# end

# puts "Total Difference: #{total_difference}"

# total_quotient = nil
# CSV.foreach("divide_input.csv") do |row|
# 	if total_quotient.nil?
# 		total_quotient = row.first.to_i
# 	else
# 		calculator = Calculator.new(total_quotient, row.first.to_i)
# 	  total_quotient = calculator.divide
# 	end
# end

# puts "Total Quotient: #{total_quotient}"


