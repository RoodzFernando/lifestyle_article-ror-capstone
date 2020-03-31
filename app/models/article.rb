class Article < ApplicationRecord
  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }, validate_media_type: false
  validates_attachment_content_type :image, content_type: %r{\Aimage/.*\z}
  belongs_to :user, foreign_key: 'author_id'
  # has_one :category, foreign_key: 'category_id'
  belongs_to :category, foreign_key: 'category_id'
  accepts_nested_attributes_for :category
  has_many :votes

  scope :most_recent, -> { order(created_at: :asc) }

  scope :most_voted, -> { Article.left_joins(:votes).group(:id).order('COUNT(votes.article_id) DESC').limit(1) }

  #  scope :category_article, lambda {
  #                            Article.left_outer_joins(:category).distinct.select('categories.*, articles.*').group('categories.id').order('priority ,articles.created_at DESC').limit(4)
  #                          }

  scope :category_article, -> {Category.find_by(priority: 1).articles.last}

  validates :title, presence: true, length: { maximum: 150 }
  validates :text, presence: true
end
