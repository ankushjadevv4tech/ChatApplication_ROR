class MessagesController < ApplicationController
  def index
    # Ensure both the sender and recipient are specified
    recipient_id = params[:recipient_id]
    if recipient_id.nil?
      return render json: { error: 'Recipient ID is required' }, status: :bad_request
    end

    # Retrieve messages between the current user and the specified recipient
    messages = Message.where(
      "(user_id = ? AND recipient_id = ?) OR (user_id = ? AND recipient_id = ?)",
      current_user.id, recipient_id, recipient_id, current_user.id
    ).order(created_at: :asc)  # Order by oldest to newest

    render json: messages
  end
end
