class ProductsController < ApplicationController
  before_action :find_product, only:[:show]
  def index
    if params[:order_by]
      @product = Product.where.not(status: 'not_for_sale').order(params[:order_by])
    else
      @product = Product.includes(:user).where.not(status: 'not_for_sale')
    end
  end

  def show
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
