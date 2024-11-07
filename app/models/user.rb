class User < ApplicationRecord
  has_many :sent_messages, class_name: 'Message', foreign_key: 'user_id', dependent: :destroy
  has_many :received_messages, class_name: 'Message', foreign_key: 'recipient_id', dependent: :destroy
end
