require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'Validation for the article' do
    it 'Ensure title presence' do
      article = Article.new(title: '', text: 'This is an article').save
      expect(article).to eq(false)
    end

    it 'Ensure text presence' do
      article = Article.new(title: 'A good article', text: '').save
      expect(article).to eq(false)
    end

    it "Ensure the maximum title's length" do
      article = Article.new(title: 'title' * 146, text: 'text').save
      expect(article).to eq(false)
    end

    it 'should save successfully' do
      article = Article.new(id: 1, title: 'A good article', text: 'with an awesome content', category_id: 1, author_id: 1).save
      expect(article).not_to eq(true)
    end
  end
end
