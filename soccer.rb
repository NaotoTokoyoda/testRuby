#define which team will win 
def soccer(team1,team2)
	if team1 > team2
		puts "Team 1 won!"
	elsif team2 > team1
		puts "team 2 won!"
	elsif team1 = team2
		puts " The game was draw!"
	end
end

#define is this number or not
def is_num(num_given)
	!!Integer(num_given) rescue false
end


def menu()
	#get number from user for team1
	puts "Enter number for team1"
	team1 = gets.chomp
	while !is_num(team1) || team1.to_i < 0 do
		puts "Text and negative number are not acceptable "
		puts "Enter numbers you want for team 1 again"
		team1 = gets.chomp
	end

	#get number from user for team2
	puts "Enter number for team2"
	team2 = gets.chomp
	while !is_num(team2) || team2.to_i < 0 do
		puts "Text and negative number are not acceptable "
		puts "Enter numbers you want for team 2 again"
		team2 = gets.chomp
	end

  	#if user put proper number, show score and call soccer function
	if (is_num(team1) && is_num(team2))
		puts "Score for team1 was #{team1}"
		puts "Score for team2 was #{team2}"
		puts soccer(team1,team2)
	end

	#menu for exit or continue
	puts "1.Exit, press q and enter."
	puts "2.Continue game, press any bottons and enter."
	decision = gets.chomp
	if decision == "q"
		exit
	else 
		menu()
	end
end

puts menu()
