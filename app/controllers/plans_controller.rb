class PlansController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ index show ]
  before_action :find_plan, only: %i[destroy show edit update]

  def index

    if params[:category_id]
      @category = Category.find(params[:category_id])
      if @category.name == "Cultural"
        @plans = Plan.where(category_id: @category.id)
      elsif @category.name == "Ecologico"
        @plans = Plan.where(category_id: @category.id)
      elsif @category.name == "Gastronomico"
        @plans = Plan.where(category_id: @category.id)
      elsif @category.name == "Party"
        @plans = Plan.where(category_id: @category.id)
      end
    elsif params[:user_id]
      @plans = Plan.where(user_id: params[:user_id])
    else
      @plans = Plan.all
    end
  end

  def show
  @review = Review.new
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.user_id = current_user.id
    if @plan.save
      redirect_to plan_path(@plan)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @plan.update(plan_params)
    redirect_to plan_path(@plan)
  end

  def destroy
    @plan.destroy
    redirect_to plans_path, status: :see_other
  end

  private

  def find_plan
    @plan = Plan.find(params[:id])
  end

  def plan_params
    params.require(:plan).permit(:title, :video_url, :details, :start_date, :end_date, :start_hour, :end_hour, :address, :link_web, :instagram_link, :facebook_link, :category_id, :user_id, :latitude, :longitude, :free)
  end
end
