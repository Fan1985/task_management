module EventsHelper
  def submit_text
    if @event.new_record?
      '新增'
    else
      '修改'
    end
  end
end
