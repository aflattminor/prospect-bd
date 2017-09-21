class CallsController < ApplicationController
  before_action :authenticate_user!

  def index
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
      redirect_to user_lead_path(@lead , @user ) ,notice: "Call Saved"

    else
      flash.now[:alert] = @call.errors.full_messages
      render :new
    end
  end


  def call_params
    params.require(:call).permit(:lead_id, :result, :body)
  end

end
