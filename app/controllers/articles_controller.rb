class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]
  before_action :logged_in_user

  def index
    @articles = Article.all
  end

  def show; end

  def new
    @article = Article.new
  end

  def edit; end

  def create
    @article = Article.new(article_params)
    @article.author_id = params[:author_id]
    @article.user = current_user
    @category = Category.find_by(id: params[:id])
    @article.category_id = @category.id
    if @article.save
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article
      flash[:success] = 'Article was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :text, :image, :id, category_attributes: [:id])
  end
end
