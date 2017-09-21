class EmailsController < ApplicationController
  before_action :authenticate_user!

  def new
    @email = Email.new
    @lead = Lead.find(params[:lead_id])
  end

  def create
    @user = current_user
    @lead = Lead.find(params[:lead_id])
    @email = Email.new(email_params)
    @email.lead = @lead
    if @email.save
      redirect_to user_lead_path(@lead , @user ) ,notice: "Email Sent"
    else
      flash.now[:alert] = @email.errors.full_messages
      render :new
    end
  end


  def email_params
    params.require(:email).permit(:lead_id, :subject, :body)
  end
end
