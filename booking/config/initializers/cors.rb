Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*',
      headers: :any,
      # expose: ['access-token', 'expiry', 'token-type', 'uid', 'client'],
      expose: ["Authorization"],
      methods: [:get, :post, :options, :delete, :put, :head, :patch]
  end
end