class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @category = Category.all
    @plans = Plan.all
    top_selected_plans
  end
  private

  def top_selected_plans
    @selected_top1 = SelectedPlan.where(status: 0).group(:plan_id).count.sort_by{|key, value| value}.reverse.first
    @selected_top = SelectedPlan.where(status: 0).group(:plan_id).count.sort_by {|key, value| value }.reverse.first(4).drop(1)

    # @selected_top = SelectedPlan.where(status: 0).group_by{|plan| plan.plan_id}.sort_by{|key| key.count}.first(4)


    # @selected_top = SelectedPlan.group(:plan_id).count.sort_by{|plan| plan[1]}.reverse.first(4)
    # SelectedPlan.group(:plan_id).count.order{|key, value| value}.reverse.limit(4)
    # SelectedPlan.where(status: 0).group(:plan_id).count.order.reverse.limit(4)
    # SelectedPlan.group(:plan_id).count.sort_by{|plan| plan[1]}.reverse.first(4)
    # SelectedPlan.group(:plan_id).count.sort_by{|plan| plan[1]}.reverse.first(4)
    # SelectedPlan.where(status: 0).group(:plan_id).count.sort_by(&:count)
    # SelectedPlan.where(status: 0).group(:plan_id).count.sort_by(&:count)
    # SelectedPlan.where(status: 0).group(:plan_id).count.sort_by{|plan| plan[1]}.reverse.first(4)
    # SelectedPlan.where(status: 0).group_by{|plan| plan.plan_id}.sort_by{|key| key.count}.first(4)
  end
end
