class AuthController < ApplicationController
  def index
    redirect_to "/auth/google_login"
  end

  def callback
    @auth_hash = request.env["omniauth.auth"]

    puts @auth_hash
  end
end
