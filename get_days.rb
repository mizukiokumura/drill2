def get_days(year, month)
  month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  if year % 4 == 0
    if year % 100 == 0 
      if year % 400 == 0
        if (month - 1) == 1 
          return month_days[month - 1] + 1 #この書き方は確かに保守性が悪い何回もおんなじコードを書いている。変数に入れたほうがいいな。
        else
          return month_days[month - 1]
        end
      end
      return month_days[month - 1]
    end
  else
    return month_days[month - 1]
  end

  return days



end

puts "年を入力してください:"
year = gets.to_i
puts "月を入力してください:"
month = gets.to_i

days = get_days(year,month)
puts "#{year}年#{month}月は#{days}日間あります"

def get_days(year, month)
  month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  if month == 2
    if year % 4 == 0
      if year % 100 == 0 && year % 400 != 0 # なるほどね、ここで400で割れなかった場合を!=として表現しているのか。
        days = 28
      else
        days = 29
      end
    else
      days = 28
    end
  else
    days = month_days[month - 1]
  end

  return days
end

puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i

days = get_days(year, month)
puts "#{year}年#{month}月は#{days}日間あります"
