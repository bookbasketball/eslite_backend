class Admin::ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_product, only: [:show, :edit, :update, :destroy, :destroy_image]

  layout 'backend'

  def index
    @products = current_user.products
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path, notice: '新增商品成功'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end
  
  def update
    if @product.update(product_params)
      redirect_to edit_admin_product_path(@product), notice: '更新商品成功'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to admin_products_path, notice: '刪除商品成功'
  end

  def destroy_image
    @product.images.find(params[:image_id]).purge
    redirect_to admin_products_path, notice: '刪除商品圖片成功'
  end

  private
  
  def find_product
    @product = Product.find(params[:id])
  end
  
  def product_params
    params.require(:product).permit(:user_id, :name, :list_price, :sale_price, :sku, :description, :state, images: [])
  end
end