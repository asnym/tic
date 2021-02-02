class ReviewsController < ApplicationController
  def create
    @review = Review.create(review: review_params[:review], article_id: review_params[:article_id], user_id: current_user.id)
    redirect_to "/articles/#{@review.article.id}" 
  end
  
  private
  def review_params
    params.permit(:review, :article_id)
  end
end
