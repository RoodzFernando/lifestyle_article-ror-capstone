module ArticlesHelper
  def category_name(val)
    @article = Article.find(val)
    if @article.category_id.nil?
      'Undefined Category'
    else
      @category_id = @article.category_id
      @category = Category.find_by(id: @category_id).name
    end
  end

  def category_all
    @categories = Category.all
  end

  def category_view(val)
    @category = Category.find(val)
    @category.article_id = @article.id
  end

  def is_author?
    current_user.id == @article.author_id
  end
end
