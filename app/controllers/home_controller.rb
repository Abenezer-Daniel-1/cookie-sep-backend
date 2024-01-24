class HomeController < ApplicationController
  def index
    cookies[:message] = "This is the true test. For production cookies"

    render json: {
      message: cookies[:message]
    }
  end

  def show
    render json: {
      header: request.headers["header"]
    }
  end
end
