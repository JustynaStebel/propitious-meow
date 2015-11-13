OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET'], scope: 'user_posts', provider_ignores_state: true , callback_url: 'http://localhost:3000/auth/facebook/callback'
end
