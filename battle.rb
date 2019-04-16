# p1_skill = 10
# p1_health = 10
# p2_skill = 10
# p2_health = 10

# def hp_check
#   if p2_health > 0 && p1_health > 0
#     battle
#   else
#     winner
#   end
# end

# def battle
#   p1_fight = p1_skill + rand(2..12)
#   p2_fight = p2_skill + rand(2..12)
#   if p1_fight > p2_fight
#     p2_health -= 2
#   elsif p2_fight > p1_fight
#     p1_health -= 2
#   else
#     battle
#   end
# end

# def winner
#   if p1_health == 0
#     puts "p2 wins"
#   else
#     puts "p1 wins"
#   end
# end

# Improved greatly so now can run unlimited simulations in one to determine odds.
def roll_dice(n)
 n.times.inject(0) { |total| total + rand(1..6) }
end

def battle(p1_skill, p1_health, p2_skill, p2_health)
 while p1_health > 0 && p2_health > 0
   p1_fight = p1_skill + roll_dice(2)
   p2_fight = p2_skill + roll_dice(2)
   if p1_fight > p2_fight
     p2_health -= 2
   elsif p2_fight > p1_fight
     p1_health -= 2
   end
 end
 p1_health > 0 ? 1 : 2
end

n = 1000
number_of_p1_wins = 0
n.times { number_of_p1_wins += 1 if battle(10, 10, 10, 10) == 1 }
proportion = number_of_p1_wins.to_f / n
puts "p1 won #{"%5.2f" % (100.0 * proportion)}% of the time"
