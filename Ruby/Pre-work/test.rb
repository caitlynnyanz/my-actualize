
class Person
  attr_reader :first_name, :last_name, :hair_color, :hobbies

  def initialize(first_name, last_name, hair_color, hobbies)
    @first_name = first_name
    @last_name = last_name
    @hair_color = hair_color
    @hobbies = hobbies
  end

  def email
    return first_name + "." + last_name + "@gmail.com"
  end

  def full_name
    return first_name + " " + last_name
  end

  def info 
    return "This is " + full_name + "." " His/her hair color is " + hair_color + ", and his/her hobbies are: " + hobbies.join(', ')
  end

end

people = [
    Person.new("Bob", "Jones", "pink", ["basketball", "chess", "phone tag"]),
    Person.new("Molly", "Parker", "black", ["computer programming", "reading", "jogging"]),
    Person.new("Kelly", "Miller", "rainbow", ["cricket", "baking", "stamp collecting"]), 
    Person.new("John", "Smith", "brown", ["xyz", "sdf"]), 
    Person.new("Jim", "Halpert", "blonde", ["awe", "rty"])
]

puts people[0].full_name
puts people[0].email
puts people[0].info



class Contact_list 
  attr_reader :title, :contract

  def initialize(title, contact)
    @title = title
    @contact = contact
  end

  def add_contact(person)
    return @contact << person
  end
  
end

cl = [
  Contact_list.new("friends", [people[0], people[1]]),
  Contact_list.new("business", [people[2], people[3]])
  ]

