class Article < ApplicationRecord
    belongs_to :user, foreign_key: "author_id"
    has_one_attached :image
    has_one :category, foreign_key: "category_id"
    accepts_nested_attributes_for :category
    has_many :votes

    # scope :most_voted, -> { Article.joins(:votes).group("articles.title").count("articles.id").max }
    def self.most_voted
        # Article.joins(:votes).group("articles.title").count("articles.id")
        find_by_sql("SELECT title, text, count(articles.id) AS vote_count FROM articles
                        INNER JOIN votes
                        on articles.id = votes.article_id GROUP BY articles.id ORDER by vote_count DESC LIMIT 1")
    end

    validates :title, presence: true, length: {maximum: 150}
    validates :text, presence: true
end
