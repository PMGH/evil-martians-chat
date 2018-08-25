class ChatController < ApplicationController
  before_action :authenticate!

  # Display last 20 messages
  def show
    @messages = Message.order(created_at: :asc).last(20)
    render status: 200, json: @messages
  end

  private

  # Redirect user to /login if they hadn't picked a username yet
  def authenticate!
    redirect_to login_path unless session[:username]
  end
end
