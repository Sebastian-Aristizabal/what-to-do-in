class PlansController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ index show ]
  before_action :find_plan, only: %i[destroy show edit update]

  def index
    if params[:category_id]
      @category = Category.find(params[:category_id])
      if @category.name == "Culturales"
        @plans = Plan.where(category_id: @category.id)
      elsif @category.name == "Ecologicos"
        @plans = Plan.where(category_id: @category.id)
      elsif @category.name == "Gastronomicos"
        @plans = Plan.where(category_id: @category.id)
      elsif @category.name == "Parties"
        @plans = Plan.where(category_id: @category.id)
      end
    elsif params[:user_id]
      @plans = Plan.where(user_id: params[:user_id])
    elsif params[:query]
      @plans = Plan.search(params[:query])
    else
      @plans = Plan.all
    end


    @markers = @plans.geocoded.map do |plan|
      if plan.category
        if plan.category.name == "Culturales"
          marker_image = "3.png"
        elsif plan.category.name == "Ecologicos"
          marker_image = "2.png"
        elsif plan.category.name == "Gastronomicos"
          marker_image = "4.png"
        elsif plan.category.name == "Parties"
          marker_image = "1.png"
        end
      end
      {
        lat: plan.latitude,
        lng: plan.longitude,
        info_window: render_to_string(partial: "info_window", locals: {plan: plan}),
        image_url: helpers.asset_url(marker_image)
      }
    end
  end

  def show
    @review = Review.new
    @markers = @plan.geocode.map do |plan|
      if @plan.category
        if @plan.category.name == "Culturales"
          marker_image = "3.png"
        elsif @plan.category.name == "Ecologicos"
          marker_image = "2.png"
        elsif @plan.category.name == "Gastronomicos"
          marker_image = "4.png"
        elsif @plan.category.name == "Parties"
          marker_image = "1.png"
        end
      end
      {
        lat: @plan.latitude,
        lng: @plan.longitude,
        info_window: render_to_string(partial: "info_window2", locals: {plan: plan}),
        image_url: helpers.asset_url(marker_image)
      }
    end
  end

  def new
    @plan = Plan.new
    @footer = true
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
    params.require(:plan).permit(:title, :video_url, :details, :start_date, :end_date, :start_hour, :end_hour, :address, :link_web, :instagram_link, :facebook_link, :category_id, :user_id, :latitude, :longitude, :free, :name, photos: [])
  end
end
