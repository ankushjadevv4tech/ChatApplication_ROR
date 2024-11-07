Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,'1013540422845-b7d791v6udjubdl4lilgkq4jdqpp6qci.apps.googleusercontent.com','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', {
    scope: 'email,profile', 
    prompt: 'consent',
    access_type: 'offline',
    provider_ignores_state: true,
  }

end
