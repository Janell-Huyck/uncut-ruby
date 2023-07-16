class CommentsController < ApplicationController

    # this "security" is hard-coded and in the working model will not
    # be part of the commit on GitHub.  It is here for training purposes only,
    # and will be removed in the final version.
    # The "dhh" and "secret" were from https://guides.rubyonrails.org/getting_started.html
    http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
    end
    
    def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article), status: :see_other
    end


    private
    
    def comment_params
        params.require(:comment).permit(:commenter, :body, :status)
    end
end
