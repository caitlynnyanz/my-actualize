# You will be creating a method called change in a class called ChangeMachine that will take a number of cents and return an array of coins that will be your change. The goal is to return as few coins as possible. Assume that the highest denomination of coins will be a quarter (25 cents). For example: If the method receives 119, the result will be [25, 25, 25, 25, 10, 5, 1, 1, 1, 1]
# When you finish, try to refactor your code without breaking the tests!
# Bonus: Write a method that accepts a number as a parameter and returns its Roman numeral equivalent.



## Inital Attempt

# class ChangeMachine

#   def change(cents)
#     coins = []
#     until cents ==  0 do 

#       until cents < 25 do 
#         if (cents - 25) >= 0
#           cents = cents - 25
#           coins << 25
#         end 
#       end

#       until cents < 10 do 
#         if (cents - 10) >= 0
#           cents = cents - 10
#           coins << 10
#         end 
#       end

#       until cents < 5 do 
#         if (cents - 5) >= 0
#           cents = cents - 5
#           coins << 5
#         end 
#       end

#       until cents < 1 do 
#         if (cents - 1) >= 0 
#           cents = cents - 1
#           coins << 1
#         end 
#       end

#     end 
#     return coins
#   end
#   # I = 1 V = 5 X = 10 L = 50 C = 100 D = 500 M = 1000
#   def to_roman(number)
#     translation = []
#     until number ==  0 do 

#       until number < 1000 do 
#         if (number - 1000) >= 0
#           number = number - 1000
#           translation << "M"
#         end 
#       end

#       until number < 500 do 
#         if (number - 500) >= 0
#           number = number - 500
#           translation << "D"
#         end 
#       end

#       until number < 100 do 
#         if (number - 100) >= 0
#           number = number - 100
#           translation << "C"
#         end 
#       end

#       until number < 50 do 
#         if (number - 50) >= 0 
#           number = number - 50
#           translation << "L"
#         end 
#       end
        
#       until number < 10 do 
#         if (number - 10) >= 0 
#           number = number - 10
#           translation << "X"
#         end 
#       end

#       until number < 5 do 
#         if (number - 5) >= 0 
#           number = number - 5
#           translation << "V"
#         end 
#       end

#       until number < 4 do 
#         if (number - 4) >= 0 
#           number = number - 4
#           translation << "IV"
#         end 
#       end

#       until number < 1 do 
#         if (number - 1) >= 0 
#           number = number - 1
#           translation << "I"
#         end 
#       end
#     end
#     return translation.join
#   end

# end


require 'rspec'

## Modified 

class ChangeMachine

  def change(cents)
    coin_types = [25, 10, 5, 1]
    coins = []
    coin_types.each do |coin_type|
      while cents >= coin_type
        coins << coin_type
        cents -= coin_type
      end
    end

    return coins
  end

  def to_roman(number)
    numerals = [
      {numeral: "M", value: 1000}, 
      {numeral: "D", value: 500}, 
      {numeral: "C", value: 100}, 
      {numeral: "L", value: 50}, 
      {numeral: "X", value: 10}, 
      {numeral: "V", value: 5}, 
      {numeral: "IV", value: 4}, 
      {numeral: "I", value: 1}
    ]
    translation = []
    numerals.each do |numeral|
      while number >= numeral[:value]
        translation << numeral[:numeral]
        number -= numeral[:value]
      end
    end

    return translation.join
  end
end


##Testing 

RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return an array of coins equal to cents given' do
      machine = ChangeMachine.new
      result = machine.change(100)
      expect(result).to eq([25, 25, 25, 25])
    end

    it 'should return an array of coins equal to cents given' do
      machine = ChangeMachine.new
      result = machine.change(80)
      expect(result).to eq([25, 25, 25, 5])
    end

  end

  describe '#to_roman' do
    it 'should return the roman numeral translation of given number' do
      machine = ChangeMachine.new
      result = machine.to_roman(100)
      expect(result).to eq("C")
    end

    it 'should return the roman numeral translation of given number' do
      machine = ChangeMachine.new
      result = machine.to_roman(15)
      expect(result).to eq("XV")
    end

  end
end