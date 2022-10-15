class SelectedPlansController < ApplicationController
  def index
    @selected = SelectedPlan.all
  end

  def new
    @plan = Plan.find(params[:plan_id])
    @selected = SelectedPlan.new
  end

  def create
    raise
    @selected = SelectedPlan.new(selected_params)
    @selected.user_id = current_user.id
    @plan = Plan.find(params[:plan_id])
    @selected.plan_id = @plan.id
    if @selected.save
      redirect_to selected_plans
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def selected_params
    params.require(:selected_plans).permit(:user_id, :plan_id, :status)
  end
end
