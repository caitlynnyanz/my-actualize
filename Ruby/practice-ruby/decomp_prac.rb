# **Decomposing WORDLE**

#generate/store a 5 letter word.. 
#store in array using split method

#user input 5 letter word / gets.chomp
#store 5 letter word as array/ split method

#using loop (while, until, etc.) search for letters in array and compare to stored, if same letter as one in stored (yellow something)
#using second loop (while, until, etc) compare each letter in array to stored array, IF same letter same spot THEN (change green something)


puts "Welcome to WORDLE!"
puts "We have thought of a 5 letter word, can you guess it??"
puts "Some rules:  lowercase letters = correct letter/ wrong place, upercase = correct letter/ correct place."
puts "You have 6 guesses, HAVE FUN!!"

correct_word = "world"
stored_arr = correct_word.split('')

tracker = [" ", " ", " ", " ", " "]

puts "Please enter your first 5 letter word guess:"

counter = 1
user_guess = gets.chomp.split('')

until user_guess == stored_arr || counter == 6 do

index = 0

  while index < user_guess.length 
    if stored_arr.include?(user_guess[index]) == true
      tracker[index] = user_guess[index].downcase
    end
  
    if stored_arr[index] == user_guess[index]
      tracker[index] = user_guess[index].upcase
    end
    
    index = index +1
  end

  counter = counter +1
  p tracker 

  puts "Guess again!"
  user_guess = gets.chomp.split('')

end

if user_guess == stored_arr
  puts "YOU WIN!!!"
else
  puts "No more tries.. Maybe next time.."
end


