class VotesController < ApplicationController
  def show
    @votes = Vote.all
    @user = User.find_by(id: current_user)
    @article = Article.find(params[:id])
    @vote = Vote.new(user_id: @user.id, article_id: @article.id)
    if current_user.votes.where(article_id: @article.id).count.positive?
      flash[:danger] = 'You can vote once for that article.'
      redirect_to article_path(@article.id)
    else
      @vote.save
      redirect_to article_path(@article.id)
      flash[:success] = 'Thank you for your vote.'
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:user_id, :article_id, :id)
  end
end
