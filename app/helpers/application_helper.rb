module ApplicationHelper
  def format_room_name_for_dom_id room_name = ""
    formatted_room_name = room_name.delete(" ").underscore
    "#{formatted_room_name}"
  end
end
