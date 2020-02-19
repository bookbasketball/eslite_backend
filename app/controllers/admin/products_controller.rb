class Admin::ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_product, only: [:show, :edit, :update, :destory]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_product_path, notice: '新增商品成功'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end
  
  def update
    if @product.update
      redirect_to edit_admin_product_path(@product), notice: '更新商品成功'
    else
      render :edit
    end
  end

  def destory
    @product.destory
    redirect_to admin_product_path, notice: '刪除商品成功'
  end
  
  private
  
  def find_product
    @product = Product.find(params[id])
  end
  
  def product_params
    params.require(:product).permit(:name, :list_price, :sale_price, :sku, :description, :image, :state)
  end
end