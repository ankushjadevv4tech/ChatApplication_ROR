## Requirements

- **Ruby version**: 3.0.0
- **Rails version**: 7.1.5

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/ankushjadevv4tech/ChatApplication_ROR.git
   cd chat-app-backend
 2. **Run the following command to install all required gems**:  
      ```bash
      bundle install
 2. **Database Setup**:  
      ```bash
      1. rails db:create
      2. rails db:migarte
      3. rails db:seed
 3. **Environment Variables**
    Create a `.env` file in the root directory of the project.
    Add your `GOOGLE_CLIENT_ID` and `GOOGLE_CLIENT_SECRET` to the .env file
     ```bash
        GOOGLE_CLIENT_ID=your-google-client-id
        GOOGLE_CLIENT_SECRET=your-google-client-secret
        
  2. **Start the Rails Server**: 
     ```bash
      rails server
  
