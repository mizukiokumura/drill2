# def fizz_buzz
#   num = 0
#   while num <= 100 do
#     if num % 15 == 0
#       puts "FizzBuzz"
#     elsif num % 5 == 0
#       puts "Buzz"
#     elsif num % 3 == 0
#       puts "Fizz"
#     else
#       puts num
#     end
#     num += 1
#   end
# end
  # 100.times do |i|
  #   if i % 15 == 0
  #     puts "FizzBuzz"
  #   elsif i % 5 == 0
  #     puts "Buzz"
  #   elsif i % 3 == 0
  #     puts "Fizz"
  #   else
  #     puts i
  #   end
  # end

# fizz_buzz

def fizz_buzz
  num = 1
  while num <= 100 do
    if num % 15 == 0
      puts "FizzBuzz"
    elsif num % 3 == 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "Buzz"
    else
      puts num
    end

    num = num + 1
  end
end

fizz_buzz