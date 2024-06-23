# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

# User.create!(
#   [
#     { email: "alice@example.com", password: "password", name: "Alice" },
#     { email: "bob@example.com", password: "password", name: "Bob" },
#     { email: "charlie@example.com", password: "password", name: "Charlie" },
#     { email: "dave@example.com", password: "password", name: "Dave" },
#     { email: "eve@example.com", password: "password", name: "Eve" }
#   ]
# )

# User.create!(
#   email: 'admin@gmail.com',
#   password: 'adminadmin',
#   password_confirmation: 'adminadmin',
#   name: 'Admin User',
#   admin: true
# )

# blog = Blog.create!(
#   # [
#     # { title: "味噌サーモン", content: "1小さめの鍋に酒とみりんを入れて中火で2分ほど煮ます。2 2分後、砂糖と味噌を加え、完全に乳化させてから20分ほど冷まします。3 鮭を密閉できる衛生的な容器に入れ、冷ました味噌を加え、鮭全体が味噌に覆われるようにします。4 サーモンを冷蔵庫で1日、または少なくとも12時間マリネします。 5 マリネした後、ベーキングペーパーを敷いた天板にサーモンを置き、熱源から6インチ離して、好みの焼き加減になるまで約6〜10分間焼きます。6 ご飯またはお好みの穀物の上に盛り付け、チャイブを添えてお召し上がりください。", ingredients: "サーモン2ポンド（切り身にしたもの）, 酒¼カップ, みりん¼カップ, 白味噌大さじ6杯, 砂糖大さじ6杯", calories: 350, user_id: User.find_by(name: "Alice").id },
#     # { title: "カレーライス", content: "1.にんじんは1cm幅のいちょう切りにします。じゃがいもは一口大に切ります。玉ねぎは芯を取り除き、一口大に切ります。2.豚バラ肉は5cm幅に切ります。3.中火で熱した鍋にサラダ油を入れ2を加え炒めます。豚バラ肉の色が変わったら1を加え都度よく炒め合わせます。4.全体に油がまわったら、水を入れ中火でアクを取り除きながら煮込みます。5.じゃがいもがやわらかくなったら、調味料を入れ混ぜ合わせます。全体がよく混ざったら弱火で10分程煮込み、とろみがついたら火から下ろします。6.ごはんをよそった器に盛り付け完成です", ingredients: "ごはん	4膳	具	豚バラ肉 (スライス)	200g	じゃがいも	300g	にんじん	150g	玉ねぎ	1個	水	500ml	調味料	カレールー	100g	すりおろし生姜	小さじ1	すりおろしニンニク	小さじ1	サラダ油", calories: 300, user_id: User.find_by(name: "Bob").id },
#     # { title: "ガパオライス", content: "1.ピーマンとパプリカは長さを揃えて細切りに、玉ねぎは縦に薄くスライスします。にんにくはみじん切りにします。(A)を合わせておきます。	2.フライパンにサラダ油を引き、目玉焼きを作ります。お好みの硬さになったら取り出します。	3.油はそのままでにんにくと豆板醤を加えて炒めます。香りが立ってきたら鶏ひき肉を炒めます。色が変わってきたら、野菜を加えて炒めます。	4.火が通ってきたら(A)の合わせ調味料を加えて汁気が落ち着くまで炒めます。最後にちぎったバジルを加えてさっと炒めます。	5.ごはんと盛り付けて目玉焼きを乗せたら完成です。", ingredients: "ごはん300g	鶏挽き肉200g	赤パプリカ1/4個	ピーマン2個	玉ねぎ1/4個	バジル4枚	ニンニク1片	豆板醤小さじ1	(A)ナンプラー小さじ2	(A)オイスターソース小さじ2	(A)酒大さじ1	(A)砂糖小さじ1	サラダ油大さじ3	卵2個	飾り用バジル", calories: 400, user_id: User.find_by(name: "Charlie").id },
#     # { title: "シンガポールチキンライス",content: "1.鶏もも肉にフォークで穴をあけ、塩こしょうをふります。	2.炊飯釜に米を入れ水を2合の目盛りまで注ぎます。(A)、1を入れて炊飯します。	3.タレを作ります。玉ねぎをみじん切りにします。	4.ボウルに入れ、(B)を加え混ぜます。	5.2が炊けたら鶏もも肉を取り出して半分を食べやすい大きさに切り、半分は細かく切って炊き上がったごはんに混ぜます。	6.ごはん、5の食べやすい大きさに切った鶏もも肉、ベビーリーフ、ミニトマト、バジルを皿に盛り付けて、粗挽き黒こしょう、4をかけて完成です。", ingredients: "米2合	鶏もも肉300g	塩こしょうふたつまみ	水適量	(A)すりおろしニンニク小さじ1	(A)すりおろし生姜小さじ1	(A)鶏ガラスープの素小さじ1	(A)しょうゆ小さじ1	タレ	玉ねぎ1/4個	(B)すりおろしニンニク小さじ1	(B)すりおろし生姜小さじ1	(B)しょうゆ大さじ1	(B)オイスターソース小さじ2	(B)ごま油大さじ1	ベビーリーフ20g	ミニトマト2個	バジル (生)適量	粗挽き黒こしょう", calories: 350, user_id: User.find_by(name: "Admin User").id },
#     # { title: "ごま油香るたたききゅうり", content: "1.きゅうりはめん棒で叩いてヘタをとり3cm幅に切ります。	2.ボウルに1、(A)を加えて全体をよく絡めます。	3.さらに白いりごまを加えてさっと混ぜます。	4.お皿に盛り付け、糸唐辛子をトッピングしたら完成です。", ingredients: "きゅうり2本	(A)ごま油大さじ2	(A)しょうゆ小さじ2	(A)塩昆布5g	(A)すりおろしニンニク小さじ1/2	白いりごま大さじ1	トッピング	糸唐辛子", calories: 150, user_id: User.find_by(name: "Eve").id }
#   # ]
# )

blog = Blog.create!(
  title: "ごま油香るたたききゅうり",
  content: "1.きゅうりはめん棒で叩いてヘタをとり3cm幅に切ります。2.ボウルに1、(A)を加えて全体をよく絡めます。3.さらに白いりごまを加えてさっと混ぜます。4.お皿に盛り付け、糸唐辛子をトッピングしたら完成です。",
  ingredients: "きゅうり2本 (A)ごま油大さじ2 (A)しょうゆ小さじ2 (A)塩昆布5g (A)すりおろしニンニク小さじ1/2 白いりごま大さじ1 トッピング 糸唐辛子",
  calories: 150,
  user_id: User.find_by(name: "Eve").id
)

image_path1 = Rails.root.join("db/images/きゅうり.jpeg")
blog.image.attach(io: File.open(image_path1), filename: "cucumber.jpeg", content_type: "image/jpeg")
blog.save!

blog = Blog.create!(
  title: "味噌サーモン",
  content: "1小さめの鍋に酒とみりんを入れて中火で2分ほど煮ます。2 2分後、砂糖と味噌を加え、完全に乳化させてから20分ほど冷まします。3 鮭を密閉できる衛生的な容器に入れ、冷ました味噌を加え、鮭全体が味噌に覆われるようにします。4 サーモンを冷蔵庫で1日、または少なくとも12時間マリネします。 5 マリネした後、ベーキングペーパーを敷いた天板にサーモンを置き、熱源から6インチ離して、好みの焼き加減になるまで約6〜10分間焼きます。6 ご飯またはお好みの穀物の上に盛り付け、チャイブを添えてお召し上がりください。",
  ingredients: "サーモン2ポンド（切り身にしたもの）, 酒¼カップ, みりん¼カップ, 白味噌大さじ6杯, 砂糖大さじ6杯",
  calories: 350,
  user_id: User.find_by(name: "Alice").id
)

image_path2 = Rails.root.join("db/images/味噌サーモン.jpeg")
blog.image.attach(io: File.open(image_path2), filename: "miso.jpeg", content_type: "image/jpeg")
blog.save!

blog = Blog.create!(
  title: "カレーライス",
  content: "1.にんじんは1cm幅のいちょう切りにします。じゃがいもは一口大に切ります。玉ねぎは芯を取り除き、一口大に切ります。2.豚バラ肉は5cm幅に切ります。3.中火で熱した鍋にサラダ油を入れ2を加え炒めます。豚バラ肉の色が変わったら1を加え都度よく炒め合わせます。4.全体に油がまわったら、水を入れ中火でアクを取り除きながら煮込みます。5.じゃがいもがやわらかくなったら、調味料を入れ混ぜ合わせます。全体がよく混ざったら弱火で10分程煮込み、とろみがついたら火から下ろします。6.ごはんをよそった器に盛り付け完成です",
  ingredients: "ごはん	4膳	具	豚バラ肉 (スライス)	200g	じゃがいも	300g	にんじん	150g	玉ねぎ	1個	水	500ml	調味料	カレールー	100g	すりおろし生姜	小さじ1	すりおろしニンニク	小さじ1	サラダ油",
  calories: 500,
  user_id: User.find_by(name: "Bob").id
)

image_path3 = Rails.root.join("db/images/カレー.jpeg")
blog.image.attach(io: File.open(image_path3), filename: "curry.jpeg", content_type: "image/jpeg")
blog.save!

blog = Blog.create!(
  title: "ガパオライス",
  content: "1.ピーマンとパプリカは長さを揃えて細切りに、玉ねぎは縦に薄くスライスします。にんにくはみじん切りにします。(A)を合わせておきます。	2.フライパンにサラダ油を引き、目玉焼きを作ります。お好みの硬さになったら取り出します。	3.油はそのままでにんにくと豆板醤を加えて炒めます。香りが立ってきたら鶏ひき肉を炒めます。色が変わってきたら、野菜を加えて炒めます。	4.火が通ってきたら(A)の合わせ調味料を加えて汁気が落ち着くまで炒めます。最後にちぎったバジルを加えてさっと炒めます。	5.ごはんと盛り付けて目玉焼きを乗せたら完成です。",
  ingredients: "ごはん300g	鶏挽き肉200g	赤パプリカ1/4個	ピーマン2個	玉ねぎ1/4個	バジル4枚	ニンニク1片	豆板醤小さじ1	(A)ナンプラー小さじ2	(A)オイスターソース小さじ2	(A)酒大さじ1	(A)砂糖小さじ1	サラダ油大さじ3	卵2個	飾り用バジル",
  calories: 600,
  user_id: User.find_by(name: "Charlie").id
)

image_path4 = Rails.root.join("db/images/ガパオ.jpeg")
blog.image.attach(io: File.open(image_path4), filename: "gapao.jpeg", content_type: "image/jpeg")
blog.save!

blog = Blog.create!(
  title: "シンガポールチキンライス",
  content: "1.鶏もも肉にフォークで穴をあけ、塩こしょうをふります。	2.炊飯釜に米を入れ水を2合の目盛りまで注ぎます。(A)、1を入れて炊飯します。	3.タレを作ります。玉ねぎをみじん切りにします。	4.ボウルに入れ、(B)を加え混ぜます。	5.2が炊けたら鶏もも肉を取り出して半分を食べやすい大きさに切り、半分は細かく切って炊き上がったごはんに混ぜます。	6.ごはん、5の食べやすい大きさに切った鶏もも肉、ベビーリーフ、ミニトマト、バジルを皿に盛り付けて、粗挽き黒こしょう、4をかけて完成です。",
  ingredients: "米2合	鶏もも肉300g	塩こしょうふたつまみ	水適量	(A)すりおろしニンニク小さじ1	(A)すりおろし生姜小さじ1	(A)鶏ガラスープの素小さじ1	(A)しょうゆ小さじ1	タレ	玉ねぎ1/4個	(B)すりおろしニンニク小さじ1	(B)すりおろし生姜小さじ1	(B)しょうゆ大さじ1	(B)オイスターソース小さじ2	(B)ごま油大さじ1	ベビーリーフ20g	ミニトマト2個	バジル (生)適量	粗挽き黒こしょう",
  calories: 500,
  user_id: User.find_by(name: "Eve").id
)

image_path5 = Rails.root.join("db/images/チキンライス.jpeg")
blog.image.attach(io: File.open(image_path5), filename: "chicken.jpeg", content_type: "image/jpeg")
blog.save!