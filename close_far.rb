def close_far(a,b,c)
  ab = a - b
  ac = a - c
  if ac.abs == 1 || ab.abs == 1 && (b - c).abs >= 2 # ここで||の記述を逆転させると、trueになってしまうのでおかしいなと思っていたが、わからないので続けてしまった。
    puts "True"
  else
    puts "False"
  end

end


close_far(1,2,10)
close_far(1,2,3)
close_far(4,1,3)

def close_far(a,b,c)
  x = (a - b).abs # 絶対値に変換
  y = (a - c).abs
  z = (b - c).abs

  if x == 1 && z >= 2 # ここで普通に条件分岐、私の思い込みで、elsifを使わずにかけると思い込んでいた。
    puts "True"
  elsif y == 1 && x >= 2 # ここでも普通に条件分岐
    puts "False"
  else
    puts "False"
  end
end
