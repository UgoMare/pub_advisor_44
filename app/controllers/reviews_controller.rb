class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @pub = Pub.find(params[:pub_id])
    @review.pub = @pub
    if @review.save
      redirect_to pub_path(@pub)
    else
      render 'pubs/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:stars, :content)
  end
end
