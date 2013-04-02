module ApplicationHelper
  def format_room_name room_name = ""
    formatted_room_name = room_name.delete(" ").underscore
    "#{formatted_room_name}"
  end
end
