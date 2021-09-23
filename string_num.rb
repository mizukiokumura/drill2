def count_hi(str)
  string_count = str.scan("hi")
  puts string_count.length
end

count_hi('abc hi ho')
count_hi("ABChi hi")
count_hi("hihi")

def count_hi(str)
  puts str.scan("hi").length
end