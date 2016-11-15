class CategoriesController < ApplicationController

  def electronics
    @products = Product.where("lower(category) LIKE ?", 'electronics')
    unless @products.any?
      flash[:notice] = "No Products Found."
      @products = Product.all
    end
  end

  def furniture
    @products = Product.where("lower(category) LIKE ?", 'furniture')
    unless @products.any?
      flash[:notice] = "No Products Found."
      @products = Product.all
    end
  end

  def garden
    @products = Product.where("lower(category) LIKE ?", 'garden')
    unless @products.any?
      flash[:notice] = "No Products Found."
      @products = Product.all
    end
  end

  def outdoors
    @products = Product.where("lower(category) LIKE ?", 'outdoors')
    unless @products.any?
      flash[:notice] = "No Products Found."
      @products = Product.all
    end
  end
end
