module TasksHelper
  def status_img(status)
    imgname = status.to_s.eql?("0") ? "/assets/alert.png" : "/assets/tick.png"
    image_tag imgname, :title=>imgname.include?("alert") ? "Task date past, please manage this task..." : ""
  end
end
