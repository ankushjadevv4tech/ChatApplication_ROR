class AddReferencesToMessage < ActiveRecord::Migration[7.1]
  def change
    add_reference :messages, :user, foreign_key: { to_table: :users }
    add_reference :messages, :recipient, foreign_key: { to_table: :users }

    Message.update_all(user_id: 1) 
    Message.update_all(recipient_id: 1) 

    change_column_null :messages, :user_id, false
    change_column_null :messages, :recipient_id, false
  end
end
