#This is a number guessing game, where the user will be choosing a number between 1 and 100 
#The computer will be generating a result, if the user guess correctly program ends with success message
#If the user guesses wrong they will be prompted as such.

print "This is an awesome number guessing game, won't you try your luck?\n"

user_input = nil

number_generator= rand(100).to_i

until user_input == number_generator
	user_input= gets.chomp.to_i
		if user_input > number_generator
			puts "Too high, bruh."
			elsif user_input < number_generator
			puts "Think higher, bro"
	end	
end

puts "What are you, psycho? I mean psychic"

