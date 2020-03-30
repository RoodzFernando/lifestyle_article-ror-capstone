class Category < ApplicationRecord
  has_many :articles
  def self.most_prioritized_category
    Category.order('priority ASC').limit(4)
  end

  scope :category_article, lambda {
                             Article.left_outer_joins(:category).distinct.select('categories.*, articles.*').group('categories.id').order('priority ,articles.created_at DESC').limit(4)
                           }
end
