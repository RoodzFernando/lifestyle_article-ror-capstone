class Category < ApplicationRecord
    has_many :articles
    def self.most_prioritized_category
        Category.order('priority ASC').limit(4)
    end

    def self.category_article
        p = Category.left_joins(:articles).order(:priority)
        p.order(:created_at).distinct.limit(4)
    end

    scope :category_filter, -> {Article.find_by_sql("SELECT DISTINCT title, text, categories.name FROM articles
                        INNER JOIN categories on category_id = categories.id
                            WHERE category_id = 1
                            ORDER by articles.created_at DESC")}
end
