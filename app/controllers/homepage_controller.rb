class HomepageController < ApplicationController
  before_action :logged_in_user
  def index
    # @test = Article.select("title").where(category_id: category_id).last
  end
end
