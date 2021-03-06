def rps(choice)
  choices = ["Rock", "Papers", "Scissors"]

  unless choices.include?(choice)
    puts "Invalid choice!"
    return
  end

  my_choice = choices.sample

  if choice == my_choice
    return "#{my_choice}, Draw"
  end

  wins = [["Rock", "Scissors"], ["Paper", "Rock"], ["Scissors", "Paper"]]
  if wins.include?([choice, my_choice])
    "#{my_choice}, Win"
  else
    "#{my_choice}, Lose"
  end
end

def swingers(couples)
  men = couples.map { |pair| pair[0] }
  women = couples.map { |pair| pair[1] }

  men.shuffle!
  women.shuffle!

  new_couples = []
  men.count.times do |i|
    new_couples << [men[i], women[i]]
  end

  new_couples
end
