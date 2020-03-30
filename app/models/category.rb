class Category < ApplicationRecord
  has_many :articles
  def self.most_prioritized_category
    Category.order('priority ASC').limit(4)
  end

  scope :category_article, -> {
    # Article.joins(:category).group('categories.id').select('articles.title, articles.image_file_name,categories.name, categories.id, articles.category_id').order('priority, articles.created_at DESC').limit(4) }
    # Article.select("articles.*, categories.*").joins('INNER JOIN categories ON categories.id = articles.category_id').order('categories.priority').group('categories.id').limit(4)}
    #  Article.find_by_sql("SELECT DISTINCT *,articles.id, categories.priority,MAX(articles.created_at) FROM categories
    #                 INNER JOIN articles on articles.category_id = categories.id
    #                 GROUP by categories.priority, categories.id
    #                 ORDER by categories.priority ASC, MAX(articles.created_at) DESC LIMIT 4")}
    Article.left_outer_joins(:category).distinct.select('categories.*, articles.*').group('categories.id').order('priority ,articles.created_at DESC').limit(4)}
end
