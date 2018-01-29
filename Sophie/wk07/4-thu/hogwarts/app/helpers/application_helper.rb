module ApplicationHelper
  def find_house(house_id)
    House.find_by(id:house_id).name
  end
end
