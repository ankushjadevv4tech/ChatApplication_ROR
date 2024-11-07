class RoomChannel < ApplicationCable::Channel
  def subscribed
    byebug
    stream_from "room_#{params[:room]}"
  end

  def receive(data)
    message = Message.create!(
      content: data['message'],
      user_name: data['user_name'],
      user_id: data['user_id'], 
      recipient_id: data['recipient_id'], 
      room: params[:room]
    )
    
    ActionCable.server.broadcast("room_#{params[:room]}", 
                                 message: message.content, 
                                 user_name: message.user_name, 
                                 user_id: message.user_id, 
                                 recipient_id: message.recipient_id)
  end

  def unsubscribed
    # Any cleanup needed when the channel is unsubscribed
  end
end
