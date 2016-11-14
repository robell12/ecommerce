class ProductsController < ApplicationController
 	before_action :set_product, except: [:index, :new, :create]

  def index
  	@products = current_user.products.all
  end

  def new
  	@product = current_user.products.new
  end

  def edit
    if current_user.id != @product.user_id
      flash[:error] = "That product can't be stolen"
      redirect_to products_path(@product)
    end
  end

  def create
  	@product = current_user.products.new(product_params)
  	if @product.save
      flash[:success] = "Product Created"
  		redirect_to products_path(@product)
  	else
      flash[:error] = "Something is wrong!"
  		render :new
  	end
  end

  def update
  	if @product.update(product_params)
  		redirect_to products_path(@product)
  	else
  		render :edit
  	end
  end

  def show
  end

  def destroy
    if current_user.id != @product.user_id
      flash[:error] = "That product can't be stolen"
      redirect_to products_path
    else
  	@product.destroy
  	redirect_to products_path
    end
  end

  private
  	def product_params
  		params.require(:product).permit(:name, :price, :quantity, :description, :brand, :category)
  	end

  	def set_product
  		@product = Product.find(params[:id])
  	end
end
