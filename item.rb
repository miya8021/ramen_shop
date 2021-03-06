require "csv"

class Item
  attr_reader :name, :price

  def initialize(name:, price:)
    @name = name
    @price = price
  end

  #selfは、クラスメソッド
  def self.import(path:)
    CSV.read(path, headers: true).map do |row|
      # itemのインスタンスをつくる
      Item.new(
        name: row["name"],
        price: row["price"].to_i,
      )
    end
  end
end
