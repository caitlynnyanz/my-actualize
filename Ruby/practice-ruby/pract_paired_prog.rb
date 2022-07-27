#1: variables, arrays, loops..

puts "Please list your 5 favorite foods."

favorite_foods = []

5.times do
  fav_food = gets.chomp
  favorite_foods << fav_food
end

index = 0
number = 1

while index < favorite_foods.length
  puts "#{number}.   #{favorite_foods[index]}"
  index = index + 1
  number = number + 1
end

#3

class Person
  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @account_number = rand.to_s[2..11]
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def email
    @email
  end

  def account_number
    @account_number
  end
end

people = []

5.times do
  puts "Please enter FIRST NAME."
  first_name = gets.chomp
  puts "Please enter LAST NAME."
  last_name = gets.chomp
  puts "Please enter EMAIL."
  email = gets.chomp
  people << Person.new("#{first_name}", "#{last_name}", "#{email}")
end

index = 0

while index < people.length
  puts "FIRST NAME: #{people[index].first_name}"
  puts "LAST NAME: #{people[index].last_name}"
  puts "EMAIL: #{people[index].email}"
  puts "ACCT #: #{people[index].account_number}"
  index = index + 1
end
