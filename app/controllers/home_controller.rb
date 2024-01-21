class HomeController < ApplicationController
  def index
    # cookies[:message] = "This is the true test. For production cookies"

    cookies[:message] = {
    value: 'your_cookie_value',
    expires: 30.days.from_now, # Set an expiration time (e.g., 30 days from now)
    domain: 'your-domain.com', # Set the domain of your Vue.js frontend
    secure: true, # Set to true if using HTTPS
    same_site: :none # Allow cross-site cookie sharing
    }

    render json: {
      message: cookies[:message]
    }
  end
end
