# 名前、メール、住所のデータが入ったハッシュの定義
# キー：name, email, address
# バリュー：Tanaka, hoge@co.ne.jp, Saitama
params = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }
# ハッシュからデータを取り出す
puts params[:name]

# キーがシンボルではなく文字列になっている
params = { "name" => "Tanaka", "email" => "hoge@co.ne.jp", "address" => "Saitama" }

puts params["name"]
# 基本的には name: というようにシンボルを用いてキーを記述しますが、
# "name" のように文字列でも記述できるということを頭に入れておきましょう。

# 途中で改行できる
params = {
  "name" => "Tanaka",
  "email" => "hoge@co.jp",
  "address" => "Saitama"
}

puts params["name"]

# eachでも使用可能
{ "name" => "Tanaka", "email" => "hoge@co.jp", "address" => "Saitama"}

# each{}を使用して以下にも書ける
["satou", "tanaka", "yamada", "shimizu"].each {|name| puts "Hello!! #{name}."}

# ハッシュの要素を編集
# →ハッシュは定義したあともデータの書き換えや追加が可能。
params = { name: "Tanaka", email: "hoge@co.jp", address: "Saitama"}

# データの書き換え
params[:name] = "Saitou"

# データの追加
params[:age] = 33

puts params[:name]
puts params[:age]

# 存在しないキーを指定するとnilになる
p params[:hobby]

# ハッシュを使った繰り返し処理
params = { name: "Tanaka", email: "hoge@co.jp", address: "Saitama"}

params.each do |key, value|
  puts "キー:#{key}"
  puts "バリュー:#{value}"
end

# eachメソッドのブロック引数の数を1つにするとハッシュの中にキーとバリューが格納される
params = { name: "Tanaka", email: "hoge@co.jp", address: "Saitama"}

params.each do |key_value|
  # 配列を出力
  p key_value
end

# 引数を1つにした場合はキーとバリューが配列に格納されるため、以下の様に出力することも可能
params = { name: "Tanaka", email: "hoge@co.jp", address: "Saitama"}

params.each do |key_value|
  # 配列を出力
  puts key_value[0]
  puts key_value[1]
end
