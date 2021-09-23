def parrot_torouble(talking, hour)

  if (hour > 6 && hour <= 20) && talking || talking == false
    puts "OK"
  else
    puts "NG"
  end

end

parrot_torouble(true, 6)
parrot_torouble(true, 7)
parrot_torouble(false, 6)
parrot_torouble(false, 7)

# 20時から翌朝7時までに🦜に喋られると問題があるのでその場合は「NG」
# それ以外は「OK」と出力するメソッドを作成する王蟲が喋る時をtrue,喋れらない時をfalseと入力することにし、時刻も同時に入力する。

# つまり、20時〜7時まではしゃべっていいと例えtalkingの中身がfalseであっても、喋ることは許されているが、
# 朝の6時までは何がなんでもしゃべっちゃいけないよってことよ、trueもfalseも関係ない

def parrot_trouble(talking, hour)
  if talking && (hour < 7) || hour >= 20) # 文字にしてみる、変数talkingがtrueが入っていてかつ変数hourが７未満または変数hourが20以上だった場合(true)putsでNGを出力する
    puts "NG"
  else
    puts "OK"
  end
end
