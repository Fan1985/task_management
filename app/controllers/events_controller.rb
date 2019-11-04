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
    @event = Event.find(params[:id])
    @event.destroy if @event
    redirect_to root_path, notice: '任務已刪除!'
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.save
      redirect_to root_path, notice: '任務修改成功!'
      byebug
    else
      redirect_to edit_event_path(@event.id), notice: '任務修改失敗!'
    end
  end

  private
    def clean_params
      params.require(:event).permit(:topic, :content, :priority, :status, :start_from, :end_at)
    end

end
