if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_open_circle', domain: :all
else
  Rails.application.config.session_store :cookie_store, key: '_open_circle'
end
