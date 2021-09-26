# def end_other(a, b)
#   alen = a.length # aの文字列の長さ(個数を取得している)
#   blen = b.length # bの文字列の長さ(個数を取得している)
#   astr = a.downcase.slice(alen) # aの文字列を小文字にしてかつaの文字列の長さ分文字列を切り取っている
#   bstr = b.downcase.slice(alen..-1) # 

#   if astr == bstr
#     puts "True"
#   else
#     puts "False"
#   end

# end

# end_other('Hiabc', 'abc')
# end_other("AbC", "HiaBc")
# end_other("abc", "HaloBc")

# もしも、bにaの文字が文字列の後半に入っていた場合、trueを入っていなければfalseを与える。
# つまりは文字の数を数えて、なんちゃらして感チャラすればいいわけだ、
# なんちゃらかんチャラんーなんだろうなーまず変数作って、aも文字の個数を入れて
# そして変数の中にその文字の個数を切り取って入れて、んでbにその文字が後半にあるかどうかを
# 真偽させればいいわけだから、どうやってbの「後半」の部分をとってくるかがいまいちわかっていない。
# どうすればいいんだ、lengthで入れたけどalenーblenでやってみるか

def end_other(a,b)
  a_down = a.downcase
  b_down = b.downcase
  a_len = a_down.length
  b_len = b_down.length
  if b_down.slice(-(a_len).. - 1) == a_down || a_down.slice(-(b_len).. - 1) == b_down
    puts "True"
  else
    puts "False"
  end
end


end_other('Hiabc', 'abc')
end_other("AbC", "HiaBc")
end_other("abc", "HaloBc")

# 大文字と小文字を区別しないという条件のため、2~3行目で任意の２つの文字列を小文字に変換している(仮引数a,b)
# 4~6行目でどちらかの文字列がもう一方の文字列の最後にある場合を区別するための処理を行なっている。
# slice(-(a_len).. - 1) としているのは対象の文字列文を切り取るための記述です。

# たとえば、以下のようにend_other('Hiabc', 'abc')でメソッドを呼び出し、実行した場合を考えてみましょう。

# def end_other(a, b)
#   a_down = a.downcase
#   b_down = b.downcase
#   a_len = a_down.length
#   b_len = b_down.length
#   if b_down.slice(-(a_len)..- 1) == a_down || a_down.slice(-(b_len)..- 1) == b_down
#     puts "True"
#   else
#     puts "False"
#   end
# end

# end_other('Hiabc', 'abc') 
# すると、2〜5行目で以下のように処理されます。

# a_down = hiabc
# b_down = abc
# a_len = 5
# b_len = 3
# 続いて6行目で、abcの最後にHiabcが含まれているか、Hiabcの最後にabcという文字列が含まれているかを判別しています。

# まずは、条件式の左辺を見て見ましょう。
# b_down.slice(-(a_len)..- 1)は、b_down.slice(-5..-1)となります。しかし、b_down = abcとなっているので、インデックス番号-5から-1という条件で切り取ることができません。そのため、この部分はnilとなります。結果、nil == a_downは等しくないと評価されるので、falseになります。

# 続いて、条件式の右辺を見てみましょう。
# a_down.slice(-(b_len)..- 1)はと、a_down.slice(-3..-1)となります。ここで、hiabcという文字列の最後にabcが含まれているかを確認したいので、abcという文字列分を左から数えます。すると、hiabcの最後までを範囲指定していることがわかります。そしてa_down = hiabcとなるので、インデックス番号-3から-1という条件で切り取るとabcが残ります。結果、abc == b_downは等しいと評価されるので、trueとなります。

