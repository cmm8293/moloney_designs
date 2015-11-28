# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'rubygems'
require 'etsy'
require 'json'

Etsy.api_key = 'nkps41voozm8g2cvq1q7opk4'

shop = Etsy::Shop.find('juliemoloneydesigns')

@listings = shop.listings(state = nil, options = {
                                                      :limit => 1000
                                                  })

@listings.each do |listing|
  Product.create(listing_id: listing, 
                 listing_url: listing.url, 
                 listing_image_url: listing.image().small,
                 listing_name: listing.title,
                 listing_price: listing.price
                 )
end





