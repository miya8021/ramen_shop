class User
  attr_reader :money

  def initialize(money:)
    @money = money
  end

  def choice(items)
    #選んだ番号がない時に、再度入力を促す
    while true
      print "メニューを選んで下さい > "
      num = gets.to_i
      break if (1..7).include?(num)
      puts "選んだ番号のメニューは、ありません。再度、選んで下さい。"
    end
    items[num - 1]
  end
end