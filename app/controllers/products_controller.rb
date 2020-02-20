class ProductsController < ApplicationController
  before_action :find_product, only:[:show]
  def index
    @products = Product.where(state: 'for_sale')
  end

  def show
  end
end
