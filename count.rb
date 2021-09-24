def count_evens(array)
  count = 0
  array.each do |num|
    if num.even?
      count += 1
    end
  end
  puts count
end

count_evens([2,1,2,3,4])
count_evens([2,2,0])
count_evens([1,3,5])