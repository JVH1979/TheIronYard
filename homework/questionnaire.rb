# This is my questionnaire of random things. 
puts "get ready to have your mind blown."
quiz= [
{
	query:"What is the HBO show based on the books of George RR Martin?",
	answer:"C",
	answer_choices:[
		a: "Entourage",
		b: "The Sopranos",
		c: "Game of Thrones",
		d: "Homeland"
	]
},
{   
	query: "Who is the best superhero from this list?",
	answer: "D",
	answer_choices: [
		a: "The Batman",
		b: "Darkhawk",
		c: "Plastic Man",
		d: "Spiderman"
		]
},

{   
	query: "Who is the worst philadelphia eagles quarterback of all time?",
	answer: "A",
	answer_choices: [
		a: "Micheal Vick",
		b: "Mark Sanchez",
		c: "Donovan McNabb",
		d: "Randall Cunningham"]
},

{   
	query: "Who is the best college football team in the country?",
	answer: "B",
	answer_choices: [
		a: "Notre Dame Fighting Irish",
		b: "Jacksonville State Gamecocks",
		c:"South Carolina Gamecocks",
		d: "Florida State Seminoles"]
},

{   
	query: "What video game system is better?",
	answer: "A",
	answer_choices: [
		a: "PS3",
		b: "PS4",
		c: "XBOX 360",
		d: "Super NES"]
},

{   
	query: "What school is the Blue Devil the mascot for?",
	answer: "C",
	answer_choices: [
		a: "USC",
		b: "UNLV",
		c: "Duke",
		d: "Ohio State"]
},

{   
	query: "Where in the world is Carmen Sandiego?",
	answer: "D",
	answer_choices: [
		a: "merica",
		b: "i dunno",
		c: "really?",
		d: "PBS"]
},

{   
	query: "What's the best food from the list?",
	answer: "D",
	answer_choices: [
		a: "tacos",
		b: "burgers",
		c: "pizza",
		d: "sushi"]
},

{   
	query: "What is the best genre of music?",
	answer: "B",
	answer_choices: [
		a: "hip hop",
		b: "rock n roll",
		c: "country",
		d: "EDM"]
},

{   
	query: "Finish the line 'Sometimes i rhyme fast, Sometimes i rhyme....",
	answer: "D",
	answer_choices: [
		a: "crafty",
		b: "complex",
		c: "easy",
		d: "slow"]
},

]

accumulated_points = 0.0

quiz.each do |stuff|
		puts stuff[:query], stuff[:answer_choices]
		user_answer = gets.chomp.upcase
		if user_answer == stuff[:answer]
			puts "you got it!"
			accumulated_points += 1
		else
			puts "sorry bro"
		end
end

total_query= quiz.count.to_f
score= (accumulated_points / total_query) * 100
print "Your score is #{score.round(2)}%"



			

	
