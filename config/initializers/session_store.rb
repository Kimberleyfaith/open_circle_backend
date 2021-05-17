if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_open_circle', domain: 'https://faithsylvia1.github.io/open_circle_frontend/'
else
  Rails.application.config.session_store :cookie_store, key: '_open_circle'
end
