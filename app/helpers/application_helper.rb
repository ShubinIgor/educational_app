module ApplicationHelper
  include ActionView::Helpers::TextHelper

  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def bootstrap_class_for(message_type)
    {
      success: "alert-success",
      error: "alert-danger",
      danger: "alert-  danger",
      alert: "alert-warning",
      notice: "alert-info"
    }[message_type.to_sym] || message_type
  end
end
