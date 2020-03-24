class Article < ApplicationRecord
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    belongs_to :user, foreign_key: "author_id"
    has_one :category, foreign_key: "category_id"
    accepts_nested_attributes_for :category
    has_many :votes

    def self.most_voted
            left_joins(:votes).group(:id).order('COUNT(votes.article_id) DESC').limit(1)
    end

    validates :title, presence: true, length: {maximum: 150}
    validates :text, presence: true
end
