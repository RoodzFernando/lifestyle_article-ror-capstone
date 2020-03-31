module HomepageHelper
  def article_all
    @article_voted = Article.most_voted
  end

  def category_list
    @category_list = Article.category_article
  end

  def recent_article
    @article_recent = Article.order('created_at DESC').select('title').limit(4)
  end
end
