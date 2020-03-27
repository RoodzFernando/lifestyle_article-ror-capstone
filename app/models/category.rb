class Category < ApplicationRecord
    has_many :articles
    def self.most_prioritized_category
        Category.order('priority ASC').limit(4)
    end

    scope :category_article, -> {
        Article.find_by_sql("SELECT DISTINCT *,categories.priority,MAX(articles.created_at) FROM categories
                    INNER JOIN articles on articles.category_id = categories.id
                    GROUP by categories.priority
                    ORDER by categories.priority ASC, MAX(articles.created_at) DESC LIMIT 4")}

end
