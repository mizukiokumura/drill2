def in1to10(num, outside_mode)
  
  if outside_mode == true || num >= 1 && num <= 10
    puts "True"
  else
    puts "False"
  end

end

in1to10(5,false)
in1to10(11,false)
in1to10(11,true)


def in1to10(num, outside_mode)
  if (num >= 1 && num <= 10) || outside_mode
    puts "True"
  else
    puts "False"
  end
end
