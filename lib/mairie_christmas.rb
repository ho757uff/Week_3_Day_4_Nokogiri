require 'rspec'
require 'pry'
require 'rubocop'
require 'dotenv'
require 'http'
require 'json'
require 'nokogiri'
require 'open-uri'

Dotenv.load('.env')

# ---

puts "Voici les emails des mairies:\n\n\n"

region_page_url = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
city_names_array = region_page_url.xpath("//a[contains(@class, 'lientxt')]/text()").map { |x| x.to_s.downcase.gsub(" ", "-") }

# puts city_names_array

# ---

city_email_array = []

for n in 0...city_names_array.length
  city_page_url = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/95/#{city_names_array[n]}.html"))
  city_email_array << city_page_url.xpath("//html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]/text()").to_s
end

# puts city_email_array

# Merge the 2 arrays into a hash
puts Array[city_names_array.zip(city_email_array)]