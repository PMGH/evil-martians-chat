class ChatChannel < ApplicationCable::Channel
  # Called when the connection is authenticated (i.e. current_user has a username)
  # See channels/application_cable/connection.rb
  def subscribed
    # stream_from "channel_name"
    # stream_from means that whatever message that is broadcasted over the “chat” channel will make its way to the client.
    stream_from "chat"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  # Called when message-form contents are received by the server
  def send_message(payload)
    message = Message.new(author: current_user, text: payload["message"])

    ActionCable.server.broadcast("chat", message: render(message)) if message.save
  end

  private

  def render(message)
    ApplicationController.new.helpers.c("message", message: message)
  end
end
