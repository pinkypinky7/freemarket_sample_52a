class ProductsController < ApplicationController

  def details
  end
  
  def index
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to mypages_path
    else
      render "new"
    end
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def show
    @products = Product.all
  end

  def update
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to mypages_path, notice: '削除しました'
    else
      redirect_to maypages_path, alert: '削除できませんでした'
    end
  end

  def exhibit
    @product = Product.find(params[:id])
  end

private
  def product_params
    params.require(:product).permit(:name, :image, :description, :product_category_id, :brand, :condition, :delivery_fee, :shipping_area, :days_before_shipping, :price, :status).merge(seller_id: current_user.id)
  end

  def buying
  end
  
  def sell
  end
end

