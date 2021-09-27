# def lone_sum(ary)
#   num = 0
#   co = 0
#   ary.each do |a|
#     count = 0
#     ary.each do |b|
#       if a == b
#         count += 1
#       end
#     end

#     if count <= 2
#       num += a
#     else
#       num = 0
#     end
#   end

#   puts num
# end

# lone_sum([1,2,3])
# lone_sum([3,2,3])
# lone_sum([3,3,3])

# aの中に配列の要素が一つづつ入っていくので、aの中には最初に１が入っている、それをif文で分岐すると
# どうなるかaryをネストして、自分とおんなじ以外のやつを探してしまうとそうか３回は少なくともcauntの中にカウントされてしまうから、
# だめなのか、だとすると、ネストの中にカウントもしくは親の中にカウントを入れて仕舞えばどうだろうか

def lone_sum(ary)
  uniq_nums = []

  ary.each do |num|
    count = 0
    ary.each do |i|
      if num == i
        count += 1
      end
    end
    if count < 2
      uniq_nums << num
    end
  end
  sum = 0
  uniq_nums.each do |unique_num|
    sum += unique_num
  end
  puts sum
  
end


lone_sum([1,2,3])
lone_sum([3,2,3])
lone_sum([3,3,3])

# 3~14行目で重複しない値のみ取り出す処理を行なっている。
# 17~20行目で重複しない値のみになった配列内の合計を求める処理を行なっている。

# 例えば、lone_sum([3,2,3])でメソッドを呼び出した場合を考えてみる。

# この場合最初のeachの中の中身はnum = 3となります、その後の６行目でnum= 3 に対してi = 3,2,3と配列を再度まわし、
# それぞれに対してnum = 3と同じ数値が出た回数だけcountが増えるようになっていく。

# そして
# if count < 2
#   uniq_nums << num
# end
# の部分は重複した値がつまりカウントの中身が２以下のnumだけ配列変数uniq_numsの中に入れていく。
# 3,2,3の時は、変数countの中身が２になってしまうので、2のみが配列の中に入ることになる。
# このような感じの仕組みになっている。
# そして最後に、入れ終わった配列の変数の中身の合計値を計算するための記述をしている。

# ・ここのポイントは配列の中身を保存しておくための空の配列を用意しておくこと、
# ・配列の中身を検査するために再度同じ配列を回すこと。
# ・そして最後に重複してない値の入った、配列の合計を計算すること。