class Event < ApplicationRecord
  # belongs_to :user
#   validate :confirm_status
  
#   enum status: {'未開始': '0', '進行中': '1', '已完成': '2'}

#   def confirm_status
#     if Time.now < self.start_from
#       self.status == 1
#     else
#       self.status == 2
#     end
#   end
# end
