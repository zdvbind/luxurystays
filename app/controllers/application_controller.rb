class ApplicationController < ActionController::Base
  include Pundit::Authorization
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :set_current_request_details
  before_action :authenticate

  append_view_path Rails.root.join("app", "views", "controllers")

  private

    def authenticate(options = {})
      skip_redirect = options[:skip_redirect] || false

      if session_record = Session.find_by_id(cookies.signed[:session_token])
        Current.session = session_record
      else
        redirect_to sign_in_path unless skip_redirect
      end
    end

    def authenticate_without_redirect
      authenticate({ skip_redirect: true })
    end

    def set_current_request_details
      Current.user_agent = request.user_agent
      Current.ip_address = request.ip
    end

    def pundit_user
      Current.user
    end
end
