characther_1= {name: "mario"
				body_structure: "short fat"
				clothing: "hat, overalls, moustache"
				health: 50
				damage: 10
			}


characther_2= {name: "snips"
				body_structure: "short long lanky"
				clothing: "fur armor"
			    health: 1000
			     damage: 9000}
characther_3= {name: : "bob"
				body_structure: "huge muscles"
				clothing: "canadian tuxedo"
			    health: 1
			     damage:8}

char_array = [characther_1, characther_2, characther_3]	
combat_1 = char_array.shuffle![0]
combat_2 = char_array.shuffle[1]		     



puts char_array[:health]
while (combat_1char_array[:health] > 0 && combat_2[:health] > 0)
puts combat_1[:name],combat_1{:health}
puts combat_2[:name],combat_2[:health]
combat_1[:health] -= combat_2[:damage]
combat_2[:health] -= combat_1[:damage]
#when health is <= 0, display "person wins"
end

def check_win char1, char2
	if char1[:health] > 0 hitpoints > 0 
		puts char1[:name] + "wins!"
	else
		puts char2[:name] + "wins!"
end
end

