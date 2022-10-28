class SelectedPlansController < ApplicationController
  before_action :authenticate_user!
  def index
    @selected = SelectedPlan.where(user_id: current_user.id)
    # @plans = Plan.find(params[:id])
  end

  def new
    @plan = Plan.find(params[:plan_id])
    @selected = SelectedPlan.new
  end

  def create
    @plan = Plan.find(params[:plan_id])
    @selected = SelectedPlan.new
    @selected.plan_id = @plan.id
    @selected.user_id = current_user.id
    if SelectedPlan.exists?(:plan_id => params[:plan_id], :user_id => @selected.user_id )
      redirect_to selected_plans_path
    elsif
      # @plan = Plan.find(params[:plan_id])
      if @selected.save
        redirect_to selected_plans_path
      else
        redirect_to new_user_session_path, status: :unprocessable_entity
      end
    else
      redirect_to new_user_session_path, status: :unprocessable_entity
    end
  end

  def destroy
    @selected = SelectedPlan.find(params[:id])
    @selected.destroy
    redirect_to selected_plans_path, status: :see_other
  end

  private

  def selected_params
    params.require(:selected_plan).permit(:plan_id, :user_id)
  end
end
