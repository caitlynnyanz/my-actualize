# store: items: title, author, price
# describe in sentence

#book1 = { :title => "Crime and Punishment", :author => "Fyodor Dostoevsky", :price => 19.99 }

#book2 = { "title" => "War and Peace", "author" => "Leo Tolstoy", "price" => 21.99 }

#book3 = { title: "Wuthering Heights", author: "Emily Bronte", price: 15.99 }

#puts "'#{book1[:title]}' by #{book1[:author]} is currently $#{book1[:price]}."
#puts "'#{book2["title"]}' by #{book2["author"]} is currently $#{book2["price"]}."
#puts "'#{book3[:title]}' by #{book3[:author]} is currently $#{book3[:price]}."

class Book
  attr_reader :title, :author, :price, :in_stock
  attr_writer :price

  def initialize(_options)
    @title = _options[:title]
    @author = _options[:author]
    @price = _options[:price]
    @in_stock = true
  end

  def out_of_stock
    @in_stock = false
  end

  def info
    puts "'#{title}' by #{author} is currently $#{price}."
    if @in_stock == true
      puts "This item is currently in-stock."
    elsif @in_stock == false
      puts "This item is currently out-of-stock."
    end
  end
end

inventory = [Book.new({ :title => "Crime and Punishment", :author => "Fyodor Dostoevsky", :price => 19.99 }),
             Book.new({ :title => "War and Peace", :author => "Leo Tolstoy", :price => 21.99 }),
             Book.new({ :title => "Wuthering Heights", :author => "Emily Bronte", :price => 15.99 })]

puts inventory[1].info
inventory[2].out_of_stock
puts inventory[2].info
inventory[0].price = 18.99
puts inventory[0].info
