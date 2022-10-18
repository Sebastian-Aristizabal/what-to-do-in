class SelectedPlansController < ApplicationController
  before_action :authenticate_user!
  def index
    @selected = SelectedPlan.all
  end

  def new
    @plan = Plan.find(params[:plan_id])
    @selected = SelectedPlan.new
  end

  def create
    @plan = Plan.find(params[:plan_id])
    @selected = SelectedPlan.new
    # @selected = SelectedPlan.new(user_id: current_user.id, plan_id: 7, status: "hola")
    @selected.plan_id = @plan.id
    @selected.user_id = current_user.id
    # @plan = Plan.find(params[:plan_id])
    # @selected.plan_id = @plan.id
    if @selected.save
      redirect_to selected_plans_path
    else
      redirect_to new_user_registration_path, status: :unprocessable_entity
    end
  end

  private

  def selected_params
    params.require(:selected_plan).permit(:plan_id, :user_id)
  end
end
