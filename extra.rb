def extra_end(str)
  str_num = str.length
  number = str.slice(str_num - 2, 2)
  3.times do 
    puts number
  end

end

extra_end("Hello")
extra_end('ab')
extra_end('Hi')
extra_end("takenobu")

def extra_end(str)
  char_num = str.length
  right2 = str.slice(char_num - 2, 2)
  puts right2 * 3
end


extra_end("Hello")
extra_end('ab')
extra_end('Hi')
extra_end("takenobu")