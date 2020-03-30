class Category < ApplicationRecord
  has_many :articles
  def self.most_prioritized_category
    Category.order('priority ASC').limit(4)
  end

  scope :category_article, -> {
      # Article.select('categories.* ,articles.*').joins('INNER JOIN categories ON categories.id = articles.category_id').where('categories.name').distinct.group('categories.id').order('priority').limit(4)

    Article.find_by_sql("SELECT DISTINCT articles.category_id, articles.image_file_name,categories.priority, articles.title,categories.name, categories.id  FROM articles INNER JOIN categories ON articles.category_id = categories.id
    GROUP BY categories.priority ORDER BY categories.priority LIMIT 4 ")
  }
    end
