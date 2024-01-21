class HomeController < ApplicationController
  def index
    cookies[:message] = "This is the true test. For production cookies"
    render json: {
      message: cookies[:message]
    }
  end
end
