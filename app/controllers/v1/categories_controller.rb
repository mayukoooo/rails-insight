class V1::CategoriesController < ApplicationController
  def index
    categories = Category.all
    render json: categories
  end

  def create
    category = Category.new(category_params)
    if category.save
      render json: category
    else
      render json: category.errors
    end
  end

  def destroy
    category = Category.find(params[:id])
    render json: category if category.destroy
  end

  private

  # ストロングパラメーターの設定
  def category_params
    params.require(:category).permit(:title, :user_id)
  end
end
