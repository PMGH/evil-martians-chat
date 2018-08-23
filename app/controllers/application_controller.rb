class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Tell rails app where to find View partials
  prepend_view_path Rails.root.join('frontend')
end
