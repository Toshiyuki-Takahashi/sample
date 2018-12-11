users = ["satou", "tanaka", "yamada", "shimizu", "obata", "yanagi"]
# ※配列に人の名前を格納

# eachを実行すると、配列の要素1つ１つが|user(変数)|の中に格納されて、処理を行う。
users.each do |user|
  puts user
end

 # usersという複数の配列から
 # eachで1つ１つ取り出し
 # |user|の変数の格納していく処理を繰り返す式

 puts "======================="
# ＃を使って「〜さん」と表示することも可能
 users.each do |user|
   puts "#{user}さん"
 end

  puts "======================="
# eachのあとにwith_indexを入れると、index番号と一緒に繰り返し処理を行う
# |user|の右側のiはiという変数にインデックス番号を格納することを意味する
  users.each.with_index do |user, i|
    puts "No.#{i} #{user}さん"
  end

  puts "======================="
  # indexの右側に(1)を入れると、1から開始される処理に変更することができる
  users.each.with_index(1) do |user, i|
    puts "No.#{i} #{user}さん"
  end

  puts "======================="
# userをAチームとBチームに分ける処理

# 空の変数：配列
team_a = []
team_b = []

users.each.with_index do |user, i|
# oddは偶数かどうかを判定してくれる。
# 奇数：true 偶数：false

# oddの他にeven?というものがあり
# 偶数：true 奇数：false
# oddの反対の判定。

  if i.odd?
    # 「<<」は配列に要素を格納する意味
    team_a << user
  else
    team_b << user
  end
end

puts "チームA"
team_a.each do |user|
  puts "#{user}さん"
end

puts ""
puts "チームB"
team_b.each do |user|
  puts "#{user}さん"
end

puts "======================="
# ↑putsが多すぎるので省略する書き方

# option + ¥　で"\"が出せる

text = "チームA\n"
team_a.each do |user|
  text += "#{user}さん\n"
end
# text +=は追加代入の意味
puts text

text = "\nチームB\n"
team_b.each do |user|
  text += "#{user}さん\n"
end

puts text

puts "======================="
# ランダムでチーム分けができる処理
# 配列の要素をランダムに並び替える＝shuffle!
# 「！」があるものを「破壊的メソッド」という


users = ["satou", "tanaka", "yamada", "shimizu", "obata", "yanagi"]

users.shuffle!

team_a = []
team_b = []

users.each.with_index do |user, i|
  if i.odd?
    team_a << user
  else
    team_b << user
  end
end

  text = "チームA\n"
  team_a.each do |user|
    text += "#{user}さん\n"
  end
  puts text

  text = "\nチームB\n"
  team_b.each do |user|
    text += "#{user}さん\n"
  end

  puts text
