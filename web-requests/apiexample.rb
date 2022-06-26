# require "http"

# response = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")
# people = JSON.parse(response.body)

# pp people

require "http"
require "tty-table"

puts "Welcome to the Weather app!"

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=chicago&units=imperial&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")

data = JSON.parse(response.body)

temp = data["main"]["temp"]
description = data["weather"][0]["description"]

puts "Today in Chicago, it's #{temp} degrees, and there are #{description}."

table = TTY::Table.new(["Chicago", "header2"], [[temp, "a2"], [description, "b2"]])

puts table.render(:ascii)
