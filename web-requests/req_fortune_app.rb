require "http"

system "clear"

response = HTTP.get("http://localhost:3000/fortune")

puts response.parse[]
