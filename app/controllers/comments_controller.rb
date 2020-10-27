class CommentsController < ApplicationController
    def create
        @affiliate = Affiliate.find(params[:affiliate_id])
        @comment = @affiliate.comments.create(comment_params)
        redirect_to affiliate_path(@affiliate)
    end

    def destroy
        @affiliate = Affiliate.find(params[:affiliate_id])
        @comments = @affiliate.comments.find(params[:id])
        @comments.destroy
        redirect_to affiliates_path(@affiliate)
    end

    private def comment_params
        params.require(:comment).permit(:username, :body)
    end
end
