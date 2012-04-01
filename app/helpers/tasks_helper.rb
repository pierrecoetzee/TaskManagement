module TasksHelper
  
  def status_img(status, task_date)
    title =  past_task(task_date)     
    imgname = status.to_s.eql?("0") && title.include?("expired")   ? "/assets/alert.png" : "/assets/tick.png"
    image_tag imgname, :title=>title
  end

  def past_task(task_date)     
     d = (task_date)
     n  = Date.today
     (n-d).to_i >0  ? "This task expired" : ""
  end
end
