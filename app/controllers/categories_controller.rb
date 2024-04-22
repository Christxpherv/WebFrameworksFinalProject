class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    # use the order method to sort the categories by the column specified in the params hash
    @categories = Category.order(params[:sort_by])
    render :index
  end
end
