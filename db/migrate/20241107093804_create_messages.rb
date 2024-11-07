class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.string :content
      t.string :room
      t.string :user_name

      t.timestamps
    end
  end
end
