class CategoriesController < ApplicationController
  def show
    case params[:id]
    when "1"
      @articles_filtered = Article.where("category_id = '1'").order(created_at: :desc).to_a
      @category_name = Category.select(:name).where("id = '1'")
    when "2"
      @articles_filtered = Article.where("category_id = '2'").order(created_at: :desc).to_a
      @category_name = Category.select(:name).where("id = '2'")
    when "3"
      @articles_filtered = Article.where("category_id = '3'").order(created_at: :desc).to_a
      @category_name = Category.select(:name).where("id = '3'")
    when "4"
      @articles_filtered = Article.where("category_id = '4'").order(created_at: :desc).to_a
      @category_name = Category.select(:name).where("id = '4'")
    when "5"
      @articles_filtered = Article.where("category_id = '5'").order(created_at: :desc).to_a
      @category_name = Category.select(:name).where("id = '5'")
    when "6"
      @articles_filtered = Article.where("category_id = '6'").order(created_at: :desc).to_a
      @category_name = Category.select(:name).where("id = '6'")
    end
  end

  private

  def category_params
    params.require(:category).permit(:id)
  end
end
