### PRACTICE WHITEBOARDING ###

# 1) Write a function that takes in an array of numbers and returns its sum.

##CLARIFY##

#Input: [2, 5, 9, 12, 7]
#Output: 35

##VISUALIZE##

#loop (while)
#index
#sum = 0
#num + sum for sum
#num/ind + sum

##VERIFY##

# 2 5 9 12 7
# sum = 35

##CODE##

# arr = [2, 5, 9, 12, 7]
# index = 0
# sum = 0

# while index < arr.length
#   num = arr[index]
#   sum = sum + num
#   index += 1
# end

# p sum

arr = ["cat", "fish", "be", "pineapple"]

index = 0
max_string = ""

while index < arr.length
  if arr[index].length > max_string.length
    max_string = arr[index]
    index += 1
  end
  index += 1
end

p max_string
