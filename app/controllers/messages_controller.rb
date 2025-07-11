class MessagesController < ApplicationController
  before_action :set_message, only: [ :update ]
  def create
    @message = Message.new(message_params)
    if @message.save
      render json: @message, status: :created
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  def update
    if @message.update(message_params)
      render json: @message, status: :ok
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:serial_id, :phone, :body, :status)
  end

  def set_message
    @message = Message.find_by(serial_id: params[:serial_id])
    render json: { error: "Message not found" }, status: :not_found unless @message
  end
end
