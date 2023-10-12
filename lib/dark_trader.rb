require gem 'rspec'
require gem 'pry'
require gem 'rubocop'
require gem 'dotenv'
require gem 'http'
require gem 'json'
require gem 'nokogiri'
require gem 'open-uri'

puts "Voici quelles bloque-chiennes tu pourrais acheter avec tes faibles économies:"

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
crypto_name = page.xpath('//*[@id="__next"]/div[2]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[1]/td[2]/div/a[2]')

puts crypto_name








# # From the website, get an array of the currencies name and convert it to string
# currency_name_array = page.xpath("//tr/td/a[contains(@class, 'currency-name-container')]/text()").map {|x| x.to_s }
# # From the website, get an array of the currencies price and convert it to string
# currency_value_array = page.xpath("//tr/td/a[contains(@class, 'price')]/text()").map {|x| x.to_s }

# # Convert the 2 arrays into hash
# currency_result = Hash[currency_name_array.zip(currency_value_array)]

# puts currency_result












def get_crypto_name()
  open  
end

def get_crypto_value()
  
end

def get_crypto_hash()
    
end

def get_crypto_array()

end



def execute
  
end


# execute

# begin
#   do_something() #partie de code qui risque de produire une erreur
# rescue => e
#   puts "Oups petite erreur, mais c'est pas grave" #résultat que tu veux voir en lieu et place d'une erreur terminal
# end