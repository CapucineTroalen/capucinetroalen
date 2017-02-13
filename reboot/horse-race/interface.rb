# Pseudo-code:
# 1. Print welcome
puts "Bienvenu.e dans notre PMU"
# 2. Get horses
PONEYS_EN_COURSE = ["Aller l'OM", "Mazette", "Jean-Michel", "Micheline", "Robert"]
puts "Les poneys en course sont :"
PONEYS_EN_COURSE #.each_with_index { |poney, index| puts "#{index + 1}: #{poney}"}

# 3. Get user's bet
puts "Sur quel cheval voulez-vous parier?"
user_bet = gets.chomp.downcase

#until user_bet.include? PONEYS_EN_COURSE.to_s
#puts "Sur quel cheval voulez-vous parier?" + " " + PONEYS_EN_COURSE.to_s
#end

# 4. Run the race
def course(user_bet)
  result = PONEYS_EN_COURSE.sample
  if result.downcase == user_bet
    say "Vous avez gagné"
  else
    'say "Vous avez perdu, le gagnant est #{result}"'
  end
end
# 5. Print results
course(user_bet)
