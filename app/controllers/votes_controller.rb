class VotesController < ApplicationController
    def show
        @user = User.find_by(id: current_user)
        @article = Article.find(params[:id])
        @vote = Vote.create(user_id: @user.id, article_id:  @article.id)
        redirect_to articles_path
        flash[:success] = 'You have voted.'
    end

    private
    def vote_params
        params.require(:vote).permit(:user_id, :article_id, :id)
    end
end
