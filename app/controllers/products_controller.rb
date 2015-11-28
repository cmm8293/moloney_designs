require 'rubygems'
require 'etsy'
require 'json'

Etsy.api_key = 'nkps41voozm8g2cvq1q7opk4'

class ProductsController < ApplicationController
  def display
    @products = Product.all
  end
  
end
