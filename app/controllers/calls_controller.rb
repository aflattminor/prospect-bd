class CallsController < ApplicationController
  before_action :authenticate_user!

  def index
    @calls = Call.all
  end

  def show
    @calls = Call.find(params[:user_id])
  end

  def new
    @call = Call.new
    @lead = Lead.find(params[:lead_id])
    @result_collection  = Call::RESULTS
  end

  def create
    @user = current_user
    @lead = Lead.find(params[:lead_id])
    @call = Call.new(call_params)
    @call.lead = @lead
    if @call.save
      redirect_to user_lead_path(@lead, @call.lead) ,notice: "Call Saved"

    else
      flash.now[:alert] = @call.errors.full_messages
      render :new
    end
  end


  def call_params
    params.require(:call).permit(:lead_id, :result, :body)
  end

end
