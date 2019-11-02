class EventsController < ApplicationController
  def index 
    
  end
  def new
    @event = Event.new #產生 @event 讓 new 表單可以接資料
  end
  def create
    @event = Event.new(clean_params) 
    if @event.save
      redirect_to task_path, notice: '任務新建完成! '
    else
      render :new
    end
  end
  def show
  end
  def destroy
  end

  private
    def clean_params
      params.require(:event).permit(:topic, :content, :priority, :status, :start_from, :end_at)
    end
end
