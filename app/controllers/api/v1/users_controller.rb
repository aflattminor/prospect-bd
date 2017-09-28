class Api::V1::UsersController < ApplicationController

  def index
    render json: ActiveModel::ArraySerializer.new(
      User.where(:admin == false ),
      each_serializer: UserSerializer
    )
  end

  def show
    render json: UserSerializer.new(User.find(params[:id]))
  end

end
