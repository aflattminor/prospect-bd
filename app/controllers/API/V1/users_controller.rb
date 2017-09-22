class Api::V1::UsersController < ApplicationController

  def index
    render json: User.where(:admin == false )
  end

def show

end

end
