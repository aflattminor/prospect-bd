class LeadsController < ApplicationController
 before_action :authenticate_user!

  def index
    @leads = Lead.where(user_id: params[:user_id])
    @leads = current_user.leads
  end

  def new
    @user = current_user
    @lead = Lead.new
    @status_collection  = Lead::STATUS_OPTIONS
  end

  def show
    @lead = Lead.find(params[:id])
  end

  def create
    @user = current_user
    @lead = Lead.new(lead_params)
    @lead.user = @user
    @status_collection  = Lead::STATUS_OPTIONS
    if @lead.save
      redirect_to user_leads_path notice: "Lead added successfully"
    else
      flash.now[:alert] = @lead.errors.full_messages
      render :new
    end
  end

def edit
  @user = User.find(params[:user_id])
  @lead = Lead.find(params[:id])
  @status_collection  = Lead::STATUS_OPTIONS

end

def update
  @user = current_user
  @lead = Lead.find(params[:id])
  if @lead.update(lead_params)
    redirect_to user_lead_path(@lead), notice: "successfully updated"
  else
    render :edit
    flash.now[:alert] = "Edits not saved"
  end
end

private


def lead_params
  params.require(:lead).permit(:company, :user_id, :name, :position, :phone_number, :email, :status)
end

end
