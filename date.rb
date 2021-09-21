require "date"

days = ["日曜","月曜","火曜","水曜","木曜","金曜","土曜"]
day = Date.today.wday

if day == 5
  puts "今日は#{days[day]}日だ!!!"
else
  puts "今日は#{days[day]}日"
end
