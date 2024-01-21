class HomeController < ApplicationController
  def index
    # cookies[:message] = "This is the true test. For production cookies"
    cookies[:message] = {
      value: "this is the cookie with expiration date.",
      expires: 30.minutes.from_now
    }

    render json: {
      message: cookies[:message]
    }
  end
end
