class EventsController < ApplicationController
  def index 
    @events = Event.all
  end
  def new
    @event = Event.new 
  end
  def create
    @event = Event.new(clean_params) 
    if @event.save
      redirect_to events_path, notice: '任務新建完成! '
    else
      render :new , notice: '任務新增失敗! '
    end
  end
  def show
    @event = Event.find(params[:id])
  end
  def destroy
  end

  private
    def clean_params
      params.require(:event).permit(:topic, :content, :priority, :status, :start_from, :end_at)
    end

end
