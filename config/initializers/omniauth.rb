Rails.application.config.middleware.use OmniAuth::Builder do
  # Developer strategy allows us to log in with name/email for testing purposes
  unless Rails.env == 'production'
    provider :developer
  end

  # GitHub strategy allows us to log in via GitHub
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'], scope: "user:email"
end
