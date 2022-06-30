class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom

  # def time_zone

  # end
end
