class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ index show ]

  def new
    @plan = Plan.find(params[:plan_id])
    @review = Review.new
  end

  def edit

  end


  def create

    @plan = Plan.find(params[:plan_id])
    @review = Review.new(review_params)
    @review.plan = @plan
    @review.user_id = current_user.id
    if @review.save
      redirect_to plan_path(@review.plan)
    else
      render "plans#show", status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to plan_path(@review.plan), status: :see_other
  end

  def update
    if @review.update(review_params)
      redirect_to plan_path(@review.plan)
    else
      render "plans#show", status: :unprocessable_entity
    end
  end


  private

  def review_params
    params.require(:review).permit(:rating, :comment, :plan_id, :user_id)
  end
end
