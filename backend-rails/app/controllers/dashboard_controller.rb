class DashboardController < ApplicationController
  #before_action :authenticate_user! # optional

  def show
    # Group by day and average values
   @user_data = UserDatum.where(user_id: current_user.id)

    # Optional: Filter by date range
    if params[:start_date].present? && params[:end_date].present?
      start_date = Date.parse(params[:start_date])
      end_date = Date.parse(params[:end_date])
      @user_data = @user_data.where(created_at: start_date.beginning_of_day..end_date.end_of_day)
    end
  end
end
