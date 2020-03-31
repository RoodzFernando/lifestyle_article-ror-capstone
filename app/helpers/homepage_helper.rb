module HomepageHelper
  def article_all
    @article_voted = Article.most_voted
  end

  def category_list
    @category_list = Category.all.order(:priority).limit(4).map {|category| category.articles.last}
  end

  def get_category(article)
    Category.find(article.category_id).name
  end

  def recent_article
    @article_recent = Article.order('created_at DESC').select('title').limit(4)
  end
end
