module EventsHelper
  def submit_text
    if current_page?(action: :new)
      '新增'
    else
      '修改'
    end
  end

  def flash_style
    if flash.notice.present?
      'alert-success'
    elsif flash.alert.present?
      'alert-danger'
    elsif flash[:warning].present? 
      'alert-warning'
    end
  end

end
