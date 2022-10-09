module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    #inheriting from devise come inbuit
    super || guest_user
  end  

  def guest_user
    OpenStruct.new(name: "Guest User",
                   first_name: "Guest",
                   last_name: "user",
                   email: "gurchetanbir@gmail.com")
  end  
end  