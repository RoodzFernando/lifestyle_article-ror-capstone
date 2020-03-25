class CategoriesController < ApplicationController
  def show
    @articles_filtered = Article.where("category_id = ?", params[:id]).order(created_at: :desc)
    @category_name = Category.select(:name).where("id = ?", params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:id)
  end
end
