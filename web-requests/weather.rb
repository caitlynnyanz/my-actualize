require "http"
require "tty-table"

puts "Welcome to the Weather app!"

table = TTY::Table.new(
  ["City", "Temp:", "Min", "Max", "Description"], #header
  # [ #rows
  #   [city_response.upcase, temp, min_temp, max_temp, description],
  # ]
)

#loop here
puts "What city should we forcast?"

city_response = gets.chomp

puts "Do you prefer [C]elcius or [F]aranheit?"

temp_response = gets.chomp.upcase

until temp_response == "metric" || temp_response == "imperial"
  if temp_response == "C"
    temp_response = "metric"
  elsif temp_response == "F"
    temp_response = "imperial"
  else
    puts "Please enter again."
    temp_response = gets.chomp.upcase
  end
end

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city_response}&units=#{temp_response}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")

data = JSON.parse(response.body)

temp = data["main"]["temp"]
min_temp = data["main"]["temp_min"]
max_temp = data["main"]["temp_max"]
description = data["weather"][0]["description"]
wind_speed = data["wind"]["speed"]

table << [city_response.upcase, temp, min_temp, max_temp, description]

puts table.render(:ascii)

puts "Would you like to see another city? (yes or no)"

continue_response = gets.chomp.downcase

until continue_response == "no"
  if continue_response == "yes"
    puts "What city should we forcast?"

    city_response = gets.chomp

    puts "Do you prefer [C]elcius or [F]aranheit?"

    temp_response = gets.chomp.upcase

    until temp_response == "metric" || temp_response == "imperial"
      if temp_response == "C"
        temp_response = "metric"
      elsif temp_response == "F"
        temp_response = "imperial"
      else
        puts "Please enter again."
        temp_response = gets.chomp.upcase
      end
    end

    response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city_response}&units=#{temp_response}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")

    data = JSON.parse(response.body)

    temp = data["main"]["temp"]
    min_temp = data["main"]["temp_min"]
    max_temp = data["main"]["temp_max"]
    description = data["weather"][0]["description"]
    wind_speed = data["wind"]["speed"]

    table << [city_response.upcase, temp, min_temp, max_temp, description]

    puts table.render(:ascii)

    puts "Would you like to see another city? (yes or no)"

    continue_response = gets.chomp.downcase
  else
    puts "Try again."
    puts "Would you like to see another city? (yes or no)"

    continue_response = gets.chomp.downcase
  end
end

puts "Thanks for using the Weather App!"
