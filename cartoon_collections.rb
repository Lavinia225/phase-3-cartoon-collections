def roll_call_dwarves names
  names.each.with_index(1) {|name, index| puts "#{index}. #{name}"}
end

def summon_captain_planet planeteer_calls
  planeteer_calls.map do |call|
    call[0].upcase + call.slice(1, planeteer_calls.length - 1) + "!"
  end

end

def long_planeteer_calls calls
  if calls.filter {|call| call.length > 4}.length > 0
    true
  else
    false
  end
end

def find_the_cheese foods
  # the array below is here to help
  cheese_types = ["cheddar", "gouda", "camembert"]
  foods.each do |food|
    if cheese_types.include?(food)
      return food
    end
  end
  nil
end
