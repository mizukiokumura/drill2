def calculate_points(amount, is_birthday)
  point = 0
  if amount <= 999
    point = amount * 0.03
  else
    point = amount * 0.05
  end

  if is_birthday
    point = point * 5
  end
  
  


  puts "ポイントは#{point.floor}です"
end

calculate_points(500,false)
calculate_points(2000,false)
calculate_points(3000,true)