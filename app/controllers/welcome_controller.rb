class WelcomeController < ApplicationController
  def index
    @greeting = "hello and welcome to the server"
    render json: @greeting
  end
end
