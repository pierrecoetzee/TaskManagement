module ApplicationHelper
  
  def menu_options
      ["Create new task", "View all tasks"]
  end

  def normal_date(d)
    return "Not a date" if !d.is_a?(DateTime)
    d.to_formatted_s(:long)
  end
end
