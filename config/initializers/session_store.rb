if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_open_circle', domain: :all, secure: true
else
  Rails.application.config.session_store :cookie_store, key: '_open_circle'
end
