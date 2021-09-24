def numbermath(number)
  ten = number / 10 % 10
  one = number % 10

  tasu = ten + one
  kakeru = ten * one

  puts "足し算結果と掛け算の結果の合計値は#{tasu + kakeru}です"
end


puts "二桁の整数を入力してください"
number = gets.to_i
numbermath(number)

def addition(a,b)
  a + b
end

def multiplication(a,b)
  a * b
end

def slice_num(num)
  tens_place = (num / 10) % 10
  ones_place = num % 10
  return tens_place, ones_place
end

puts "二桁の整数を入力してください"
input = gets.to_i
x,y = slice_num(input)
add_result = addition(x,y)
multiple_result = multiplication(x,y)
puts "足し算結果と掛け算結果の合計値は#{add_result + multiple_result}です"