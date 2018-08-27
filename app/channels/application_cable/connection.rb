# frozen_string_literal: true

module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = request.session.fetch("username", nil)
      reject_unauthorised_connection unless current_user
    end
  end
end
