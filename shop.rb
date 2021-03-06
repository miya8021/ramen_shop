class Shop
  attr_reader :items

  def initialize(name:, items:)
    @name = name
    @items = items
  end

  def display
    puts <<~TEXT
      ようこそ #{@name}へ
      当店のメニューはこちらです
    TEXT
    puts "*" * 30
    @items.each.with_index(1) do |item, index|
      puts "#{index.to_s.mb_ljust(2)}. #{item.name.mb_ljust(24)} : #{item.price.to_s.mb_ljust(4)}円"
    end
    puts "*" * 30
  end

  def sell(user, item)
    puts "#{item.name}ですね。#{item.price}円になります"

    add_money = user.money + 1000
    if item.price < 3000 
      puts "#{user.money}円頂戴します。\nお釣りは #{user.money - item.price}円です"
    elsif item.price == 3000
      puts "ちょうど頂戴します。"      
    else
      puts "#{add_money}円頂戴いたします。\nお釣りは #{add_money - item.price}円です"
    end 
    puts "ゆっくり#{item.name}を召し上がって下さい"
  end
end