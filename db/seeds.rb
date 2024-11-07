# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
users_data = [
  { provider: 'google', uid: 'google_uid_1', name: 'John Doe', email: 'john.doe@example.com', image: 'https://example.com/images/john_doe.jpg' },
  { provider: 'google', uid: 'google_uid_2', name: 'Jane Smith', email: 'jane.smith@example.com', image: 'https://example.com/images/jane_smith.jpg' },
  { provider: 'google', uid: 'google_uid_3', name: 'Alice Johnson', email: 'alice.johnson@example.com', image: 'https://example.com/images/alice_johnson.jpg' },
  { provider: 'google', uid: 'google_uid_4', name: 'Bob Brown', email: 'bob.brown@example.com', image: 'https://example.com/images/bob_brown.jpg' },
  { provider: 'google', uid: 'google_uid_5', name: 'Charlie Davis', email: 'charlie.davis@example.com', image: 'https://example.com/images/charlie_davis.jpg' },
  { provider: 'google', uid: 'google_uid_6', name: 'David Lee', email: 'david.lee@example.com', image: 'https://example.com/images/david_lee.jpg' },
  { provider: 'google', uid: 'google_uid_7', name: 'Emily Garcia', email: 'emily.garcia@example.com', image: 'https://example.com/images/emily_garcia.jpg' },
  { provider: 'google', uid: 'google_uid_8', name: 'Frank Wilson', email: 'frank.wilson@example.com', image: 'https://example.com/images/frank_wilson.jpg' },
  { provider: 'google', uid: 'google_uid_9', name: 'Grace Kim', email: 'grace.kim@example.com', image: 'https://example.com/images/grace_kim.jpg' },
  { provider: 'google', uid: 'google_uid_10', name: 'Harry Martinez', email: 'harry.martinez@example.com', image: 'https://example.com/images/harry_martinez.jpg' }
]

# Create users in the database
users_data.each do |user_data|
  User.create!(user_data)
end
