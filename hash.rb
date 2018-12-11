#ハッシュ
#paramsというのをよく使う。
params = { name: "Takashi", mail: "hoge@fuga", address: "Saitama"}

#ハッシュはKeyとValueでここでは
#name = Key, "Takashi"= value
#Keyはどうゆう種類のデータか？を示し
#それに紐づく値がvalue
# 色んな組み合わせのデータが入る。

# 配列だと人の名前だけを格納したり・・・
# array = ["Satoshi", "takeshi", "yamada"]

# ハッシュは値を取り出したり、登録する時に使う。
# ↓取得する場合。
puts params[:name]

# 値を代入することも可能
params[:name] = "Yamada"
puts params [:name]

# ハッシュは繰り返し処理を使うこともできる。
params.each do |key_value|
  puts key_value
end

# ハッシュは比較することもできる。
params1 = { name: "Takashi", mail: "hoge@fuga", address: "Saitama"}
params2 = { name: "Takashi", mail: "hoge@fuga", address: "Saitama"}

puts params1 == params2

# 要素を削除することもできる。
params = { name: "Takashi", mail: "hoge@fuga", address: "Saitama"}

params.delete(:name)

puts params

# Keyのみを取り出すこともできる。
params.each_key do |key|
  puts "キー#{key}"
end

# valueのみを取り出すこともできる。
params.each_value do |value|
  puts "バリュー#{value}"
end

# Keyとvalueの入れ替え
puts params.invert
# ただ、invertで入れ替えるとシンボルがvalueになるので、表示されない、なんてことになる。
#
# そこで、↓の様にすると文字列として認識させることができ、いつも通りハッシュとして使うことができる
# 様になる。

params = { "name" => "Takashi", "mail" => "hoge@fuga", "address" => "Saitama"}

puts params.invert

puts params["Takashi"]

# if文の中にも使うことができる。

params = { "name" => "Takashi", "mail" => "hoge@fuga", "address" => "Saitama"}

if params["hoby"]
  puts "nameのデータがあります"
else
  puts "nameのデータありません"
end

p params["name"]
p params["hobby"]

# 1行で記述する場合は

puts "nameのデータありません" if params["name"]
puts params["name"]
