class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
    @leads = @company.leads
  end

  def create
    @company = Company.new
    @company = Company.create(company_params)
    if @company.save
      redirect_to @company, notice: "Company added successfully"
    else
      flash.now[:alert] = @company.errors.full_messages
      render :new
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      redirect_to @company, notice: "successfully updated"
    else
      render :edit
      flash.now[:alert] = "Edits not saved"
    end
  end

private

  def company_params
    params.require(:company).permit(:name, :employee_count, :headquarters, :industry, :core_business, :public, :status)
  end

end
