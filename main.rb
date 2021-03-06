require "pry"
# item.rb)のディレクトリからの相対パスで該当のファイルを探しに行く
require_relative "item"
require_relative "shop"
require_relative "user"
require_relative "string"

SHOP_NAME = "おいしいラーメン屋"
MONEY = 3000

# 通常インスタンスメソッドは、
# items = Item.new
# item.import←この形でしか読み込めない。クラスメソッドを用いることで↓このように読み込みできる
items = Item.import(path: "items.csv")# 商品（メニュー）
shop = Shop.new(name: SHOP_NAME, items: items) # その商品を持っているお店
user = User.new(money: MONEY) # お店に来るお客さん（お金を所持している）


shop.display # お店がメニューを表示
item = user.choice(shop.items) # ユーザーがメニューを選択する
shop.sell(user, item) # 商品を販売