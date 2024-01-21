class HomeController < ApplicationController
  def index
    cookies[:message] = "This is the true test. For production cookies"
    render json: cookies[:message]
  end
end
