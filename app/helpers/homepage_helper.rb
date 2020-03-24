module HomepageHelper
    def article_all
        @article_voted = Article.most_voted
    end

    def category_list
        @category_priority = Category.most_prioritized_category
    end

    def recent_article
        @article_recent = Article.most_recent
    end
end
