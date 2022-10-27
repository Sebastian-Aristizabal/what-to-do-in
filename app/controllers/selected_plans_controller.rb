class SelectedPlansController < ApplicationController
  before_action :authenticate_user!
  def index
    @selected = SelectedPlan.where(user_id: current_user.id)
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

  def top_selected_plans
    @selected_top = SelectedPlan.where(status: 0).group_by{|plan| plan.plan_id}.sort_by{|key| key.count}.reverse.first(4)
    # @selected_top = SelectedPlan.group(:plan_id).count.sort_by{|plan| plan[1]}.reverse.first(4)
    # SelectedPlan.group(:plan_id).count.order{|key, value| value}.reverse.limit(4)
    # SelectedPlan.where(status: 0).group(:plan_id).count.order.reverse.limit(4)
    # SelectedPlan.group(:plan_id).count.sort_by{|plan| plan[1]}.reverse.first(4)
    # SelectedPlan.group(:plan_id).count.sort_by{|plan| plan[1]}.reverse.first(4)
    # SelectedPlan.where(status: 0).group(:plan_id).count.sort_by(&:count)
    # SelectedPlan.where(status: 0).group(:plan_id).count.sort_by(&:count)
    # SelectedPlan.where(status: 0).group(:plan_id).count.sort_by{|plan| plan[1]}.reverse.first(4)
  end

  private

  def selected_params
    params.require(:selected_plan).permit(:plan_id, :user_id)
  end
end
