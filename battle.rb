p1_skill = 10
p1_health = 10
p2_skill = 10
p2_health = 10

def hp_check
  if p2_health > 0 && p1_health > 0
    battle
  else
    winner
  end
end

def battle
  p1_fight = p1_skill + rand(2..12)
  p2_fight = p2_skill + rand(2..12)
  if p1_fight > p2_fight
    p2_health -= 2
  elsif p2_fight > p1_fight
    p1_health -= 2
  else
    battle
  end
end

def winner
  if p1_health == 0
    puts "p2 wins"
  else
    puts "p1 wins"
  end
end
