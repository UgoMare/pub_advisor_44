require 'open-uri'
require 'nokogiri'

Pub.destroy_all

url = "http://www.timeout.com/barcelona/food-and-drink/vermouth-the-happiest-hour-en_gb"

html = open(url)
doc = Nokogiri::HTML(html)

doc.search('.feature-item').each do |pub|
  #logic to create a new pub
  name = pub.search('h3 a')[0].text
  location = pub.search('.icon_pin')[0].text.strip
  image = pub.search('img')[0].attr('src')

  Pub.create(name: name, location: location, image: image)
end
