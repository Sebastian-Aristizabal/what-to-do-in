class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @category = Category.all
    @plans = Plan.all
  end
end
