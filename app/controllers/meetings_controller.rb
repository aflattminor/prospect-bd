class MeetingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @meetings= Meeting.all
  end

  def show
    @meetings= Meeting.find(params[:user_id])
  end

  def new
    @meeting = Meeting.new
    @lead = Lead.find(params[:lead_id])
    @result_collection  = Meeting::RESULTS
    @source_collection = Meeting::SOURCE
  end

  def create
    @user = current_user
    @lead = Lead.find(params[:lead_id])
    @meeting = Meeting.new(meeting_params)
    @meeting.lead = @lead
    if @meeting.save
      redirect_to user_lead_path(@lead, @meeting.lead) ,notice: "Meeting Saved"

    else
      flash.now[:alert] = @meeting.errors.full_messages
      render :new
    end
  end


  def meeting_params
    params.require(:meeting).permit(:lead_id, :result, :details, :next_steps, :source)
  end

end
