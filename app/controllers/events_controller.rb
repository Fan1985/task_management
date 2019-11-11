class EventsController < ApplicationController
  before_action :get_event, only: [:show, :edit, :update, :destroy]

  def index 
    @events = Event.all
  end

  def new
    @event = Event.new 
  end

  def create
    @event = Event.new(event_params) 
    if @event.save
      redirect_to events_path, notice: '任務新增完成! '
    else
      flash[:alert] = '新增失敗!'
      render :new 
    end
  end

  def show
  end

  def destroy
    @event.destroy
    redirect_to root_path, warning: '任務已刪除!'
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to root_path, notice: '任務修改完成!'
    else
      flash[:alert] = '修改失敗!' 
      render :edit
    end
  end

  private
    def event_params
      params.require(:event).permit(:topic, :content, :priority, :status, :start_from, :end_at)
    end
    
    def get_event
      @event = Event.find(params[:id])
    end

end
