# first_name, last_name, salary, active

# require "pstore"
# require "tty-table"

class Employee
  attr_reader :id, :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(id, first, last, salary)
    @id = id
    @first_name = first
    @last_name = last
    @salary = salary
    @active = true
  end

  def delete_employee
    @first_name = nil
    @last_name = nil
    @salary = nil
    @active = nil
  end
end

employees = [Employee.new(1, "Saron", "Yitbarek", 100000), Employee.new(2, "Danilo", "Campos", 70000)]

puts "[C]reate  [R]ead  [U]pdate  [D]elete  [Q]uit:"

response = gets.chomp.upcase

until response == "Q"
  if response == "C"
    puts "First name:"
    first_name = gets.chomp
    puts "Last name:"
    last_name = gets.chomp
    puts "Salary:"
    salary = gets.chomp
    id = employees.length + 1
    employees << Employee.new("#{id}", "#{first_name}", "#{last_name}", "#{salary}")
  end

  if response == "R"
    puts "Employee id:"
    employee_id = gets.chomp
    index = employee_id.to_i - 1
    p employees[index]
    puts "Press ENTER when done"
    enter = gets.chomp
  end

  if response == "U"
    puts "Employee id:"
    employee_id = gets.chomp
    index = employee_id.to_i - 1
    puts "Update active status (true):"
    input = gets.chomp.downcase
    employees[index].active = input
  end

  if response == "D"
    puts "Employee id:"
    employee_id = gets.chomp
    index = employee_id.to_i - 1
    employees[index].delete_employee
  end

  puts "[C]reate  [R]ead  [U]pdate  [D]elete  [Q]uit:"
  response = gets.chomp.upcase
end

p employees
