class LeadsController < ApplicationController
  def index
    @leads = Lead.all
    @companies = Company.all
  end

  def new
    @company = Company.find(params[:company_id])
    @lead = Lead.new
  end

  def show
    @lead = Lead.find(params[:id])
  end

  def create
    create_by_company
end

def edit
  @lead = Lead.find(params[:id])
end

def update
  @lead = Lead.find(params[:id])
  if @lead.update(lead_params)
    redirect_to @lead, notice: "successfully updated"
  else
    render :edit
    flash.now[:alert] = "Edits not saved"
  end
end

private

def create_by_company
  @company = Company.find(params[:company_id])
  @lead = Lead.create(lead_params)
  @lead.user = current_user
  @lead.company = @company
  if @lead.save
    redirect_to @lead, notice: "Lead added successfully"
  else
    flash.now[:alert] = @lead.errors.full_messages
    render :new
  end
end

def lead_params
  params.require(:lead).permit(:user_id, :name,:company_id, :position, :phone_number, :email, :status)
end

end
