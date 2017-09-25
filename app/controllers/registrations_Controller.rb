class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:email, :username,  :password, :password_confirmation, :territory, :experience_level, :title)
  end
end
