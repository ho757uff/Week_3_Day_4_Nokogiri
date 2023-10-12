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

puts "Voici quelles 'bloque-chiennes' tu pourrais acheter avec tes faibles économies:\n\n\n"

def crypto_symbol_array(page)
  crypto_symbol_elements = page.xpath('//*[@id="__next"]/div[2]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div')
  crypto_symbol_elements.map(&:text) #crypto_symbol_array
end


def crypto_price_array(page)
  crypto_price_elements = page.xpath('//*[@id="__next"]/div[2]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/div/a/span')
  crypto_price_elements.map(&:text) #crypto_price_array
end

def final_array(crypto_symbol_array, crypto_price_array)
  crypto_symbol_array.zip(crypto_price_array).map { |symbol, price| {symbol => price} } #final_array
end


def execute()
  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
  return final_array(crypto_symbol_array(page), crypto_price_array(page))
end

execute

final_puts = execute
puts final_puts