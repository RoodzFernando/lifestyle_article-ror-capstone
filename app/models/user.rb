class User < ApplicationRecord
    before_save :downcase_name
    has_many :articles, foreign_key: "author_id" ,dependent: :destroy
    has_many :votes
    validates :name, presence: true, length: {minimum: 5},
                uniqueness: true

    private
    def downcase_name
        self.name = name.downcase
    end
end
