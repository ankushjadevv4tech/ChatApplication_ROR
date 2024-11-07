class Message < ApplicationRecord
  validates :content, :room, :user_name, presence: true
  belongs_to :user
  belongs_to :recipient, class_name: 'User'  
  
  after_create_commit do
    ActionCable.server.broadcast(
      "room_#{recipient.id}", 
      message: self.content,
      user_name: self.user.name
    )
  end
end
