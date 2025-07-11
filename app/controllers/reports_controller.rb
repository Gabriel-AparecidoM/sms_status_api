class ReportsController < ApplicationController
  def messages
    @messages = Message.where(:updated_at.gte => 24.hours.ago)
    if params[:status].present?
      @messages = @messages.where(status: params[:status])
    end
    render json: @messages, status: :ok
  end
end