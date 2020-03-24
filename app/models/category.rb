class Category < ApplicationRecord
    has_many :articles
    def self.most_prioritized_category
        Category.order('priority ASC').limit(4)
    end
end
