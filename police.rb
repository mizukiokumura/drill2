def police_trouble(a, b)
  if a && b || !a && !b 
    puts "True"
  else
    puts "False"
  end

end

police_trouble(true, false)
police_trouble(false, false)
police_trouble(true, true)

# !マークとは変数の中身がtrue(真)の時はfalseになり、変数の中身がfalseだった場合はtrueに返信する。天邪鬼演算子