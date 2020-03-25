module HomepageHelper
    def article_all
        @article_voted = Article.most_voted
    end

    def category_list
        # @category_priority = Category.order('priority ASC').limit(4)
        # @test = Article.select("title").where(category_id: @category_priority.ids)

        @category_list = Category.category_article
    end


    def recent_article
        @article_recent = Article.order('created_at DESC').select('title').limit(4)
    end
end
