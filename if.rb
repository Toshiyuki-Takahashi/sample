# if
# もし〜だったら〜をする
# 条件分岐を行うための処理

num = 13

if num > 10
  puts "10より大きいです"
end

# ＜比較演算子＞
# num > 10 : numが10より大きい
# num < 10 : numが10より小さい
# num >= 10 : numが10以上
# num <= 10 : numが10以下
# ※「＝」は右側に記述する。
# num == 10 :　numは10と同じ
# ※「＝」は2つ必要

p num > 10
p num < 10
p num >= 10
p num <= 10
p num == 10

# ※以下の様にnumに数字が入っていることをイメージすると理解しやすい。
# p num(13) > 10
# p num(13) < 10
# p num(13) >= 10
# p num(13) <= 10
# p num(13) == 10

num = 12

if num >= 10
  puts "10以上です"
elsif num >= 5
  puts "5以上です"
elsif num >= 3
  puts "3以上です"
else
  puts "3より下です"
end

# ※現場でよく使うif文の省略形↓
puts "10以上です" if num >= 10
