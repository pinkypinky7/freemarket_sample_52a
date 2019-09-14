class ProductsController < ApplicationController
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
    @products = Product.where(params(:seller_id))
  end

  def update
  end

  def destroy
  end


private
  def product_params
    params.require(:product).permit(:id, :name, :image, :description, :product_category_id, :brand, :condition, :delivery_fee, :shipping_area, :days_before_shipping, :price, :status).merge(seller_id: current_user.id)
  end
end
