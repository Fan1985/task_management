module EventsHelper
  def submit_text
    if current_page?(action: :new)
      '新增'
    else
      '修改'
    end
  end

  def errors_alert(event)
    if event.errors.any?
      "alert-danger"
    end
  end

  def flash_switch
    if flash.notice.present?
      if flash.notice.match(/完成/) 
        'alert-success'
      elsif flash.notice.match(/已刪除/)
        'alert-warning'
      end
    end
  end
  
end
