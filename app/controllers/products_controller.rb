require 'rubygems'
require 'etsy'
require 'json'

Etsy.api_key = 'nkps41voozm8g2cvq1q7opk4'

class ProductsController < ApplicationController
  def display
    
    @shop = Etsy::Shop.find('juliemoloneydesigns')
    @link = @shop.url
    @name = @shop.name
    @listings = @shop.listings(state = nil, options = {
                                                      :limit => 60
                                                      })
    
    
  end
  
end
