# ##1

# # puts "Hello!"
# # greeting = gets.chomp()
# # if greeting == "Arrr!"
# #  puts "Go away, pirate."
# # else
# #  puts "Greetings, hater of pirates!"
# # end

# ##3

# # puts "Greetings! What is your year of origin?"
# # origin = gets.chomp.to_i
# # if origin < 1900
# #   puts "That's the past!"
# # elsif origin > 1900 && origin < 2020
# #   puts "That's the present!"
# # elsif origin > 2020
# #   puts "That's the future!"
# # end

# ##5

# # puts "Input exam grade one:"
# # exam_one = gets.chomp().to_i

# # puts "Input exam grade two:"
# # exam_two = gets.chomp().to_i

# # puts "Input exam grade three:"
# # exam_three = gets.chomp().to_i

# # def list_grade(exam_one, exam_two, exam_three)
# #   puts "Exams: #{exam_one}, #{exam_two}, #{exam_three}"
# # end

# # def average_grade(exam_one, exam_two, exam_three)
# #   average = ((exam_one + exam_two + exam_three) / 3)
# # end

# # average = average_grade(exam_one, exam_two, exam_three).to_i

# # def letter_grade(average_grade)
# #   if average_grade < 59
# #     puts "Grade: F"
# #   elsif average_grade >= 60 && average_grade <= 69
# #     puts "Grade: D"
# #   elsif average_grade >= 70 && average_grade <= 79
# #     puts "Grade: C"
# #   elsif average_grade >= 80 && average_grade <= 89
# #     puts "Grade: B"
# #   elsif average_grade >= 90
# #     puts "Grade: A"
# #   end
# # end

# # def pass_fail(average)
# #   if average < 59
# #     puts "Student is failing."
# #   else
# #     puts "Student is passing."
# #   end
# # end

# # list_grade(exam_one, exam_two, exam_three)
# # puts "Average: #{average}"
# # letter_grade(average)
# # pass_fail(average)

# # Exercise: Find and fix the errors in this code to make it run!

# require "pstore"
# require "tty-table"

# class Employee
#   attr_reader :first_name, :last_name, :active, :salary

#   def initialize(input_options)
#     @first_name = input_options[:first_name]
#     @last_name = input_options[:last_name]
#     @salary = input_options[:salary]
#     @active = input_options[:active]
#   end

#   def print_info
#     puts "#{@first_name} #{@last_name} makes #{@salary} a year."
#   end

#   def give_annual_raise
#     @salary = 1.05 * @salary
#   end
# end

# database = PStore.new("employees.store")

# while true
#   system "clear"
#   database.transaction do
#     ids = database.roots
#     puts "EMPLOYEES (#{ids.length} total)"
#     header = ["id", "first_name", "last_name", "salary", "active"]
#     rows = ids.map { |id| [id, database[id].first_name, database[id].last_name, database[id].salary, database[id].active] }
#     table = TTY::Table.new header, rows
#     puts table.render(:unicode)
#   end
#   puts
#   print "[C]reate [R]ead [U]pdate [D]elete [Q]uit: "
#   input_choice = gets.chomp.downcase
#   if input_choice == "c"
#     print "First name: "
#     input_first_name = gets.chomp
#     print "Last name: "
#     input_last_name = gets.chomp
#     print "Salary: "
#     input_salary = gets.chomp.to_i
#     employee = Employee.new(
#       first_name: input_first_name,
#       last_name: input_last_name,
#       salary: input_salary,
#       active: true,
#     )
#     database.transaction do
#       ids = database.roots
#       new_id = ids.max.to_i + 1
#       database[new_id] = employee
#     end
#   elsif input_choice == "r"
#     print "Employee id: "
#     input_id = gets.chomp.to_i
#     database.transaction do
#       employee = database[input]
#       pp employee
#       puts
#       print "Press enter to continue"
#       gets.chomp
#     end
#   elsif input_choice == "u"
#     print "Employee id: "
#     input_id = gets.chomp.to_i
#     database.transaction do
#       employee = database[input_id]
#       print "Update active status (#{employee.active}): "
#       input_active = gets.chomp
#       if input_active == true
#         input_active = true
#       elsif input_active == false
#         input_active = false
#       else
#         input_active = nil
#       end
#       employee.active = input_active
#       database[input_id] = employee
#     end
#   elsif input_choice = "d"
#     puts "Delete employee"
#     print "Enter employee id: "
#     input_id = gets.chomp.to_i
#     database.transaction do
#       database.delete(input_id)
#     end
#   elsif input_choice == "q"
#     puts "Goodbye!"
#     return
#   else
#     puts "Invalid choice"
#     print "Press enter to continue"
#     gets.chomp
#   end
# end

#debug

numbers = [
  [1, 2, 3],
  [2, 2, 2],
  [3, 2, 1],
]

lines = []
index = 0

while index < numbers.length
  index2 = 0
  row = numbers[index]
  stars = ""
  while index2 < numbers[index].length
    stars = stars + "*" * row[index2] + " "
    index2 = index2 + 1
  end
  lines << stars
  index = index + 1
end

lines.each do |line|
  puts line
end
