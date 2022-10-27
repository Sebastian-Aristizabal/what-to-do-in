class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @category = Category.all
    @plans = Plan.all
    top_selected_plans
  end
  private
  
  def top_selected_plans
    @selected_top = SelectedPlan.where(status: 0).group_by{|plan| plan.plan_id}.sort_by{|key| key.count}.reverse.first(4)
  end

end
