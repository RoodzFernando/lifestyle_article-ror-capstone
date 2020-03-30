class Category < ApplicationRecord
  has_many :articles
  def self.most_prioritized_category
    Category.order('priority ASC').limit(4)
  end

  scope :category_article, -> {  Article.joins(:category).group('categories.id').select('articles.title, articles.image_file_name,categories.name, categories.id, articles.category_id').order('priority, articles.created_at DESC').limit(4) }
end
