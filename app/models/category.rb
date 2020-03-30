class Category < ApplicationRecord
  has_many :articles
  def self.most_prioritized_category
    Category.order('priority ASC').limit(4)
  end

  scope :category_article, -> {
                             Article.unscoped.select('categories.* ,articles.*').joins('INNER JOIN categories ON categories.id = articles.category_id').order('categories.priority').group('categories.id').limit(4)
                           }
    end
