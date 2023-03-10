Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    }
  elseE
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # # Don't care if the mailer can't send.
  # config.action_mailer.raise_delivery_errors = false

  config.action_mailer.perform_caching = false
  config.action_mailer.delivery_method = :sendmail
  # Defaults to:
  # config.action_mailer.sendmail_settings = {
  #   location: '/usr/sbin/sendmail',
  #   arguments: '-i'
  # }
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default_options = {from: 'siddhantdrk@gmail.com'}

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              'smtp.gmail.com',
    port:                 587,
    domain:               'gmail.com',
    user_name:            'username@gmail.com',
    password:             'password',
    authentication:       'plain',
    enable_starttls_auto: true  }

  config.action_mailer.default_url_options = { host: "localhost", port: 3000 }

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker

  ENV['GOOGLE_OAUTH_CLIENT_ID'] = '461540920304-aeupg4v1j7up8bpr8l1fiq6grh40a302.apps.googleusercontent.com'
  ENV['GOOGLE_OAUTH_CLIENT_SECRET'] = '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'


  ENV['AWS_ACCESS_KEY_ID'] = 'AKIAU6LCYMVCCKPKZDMH'
  ENV['AWS_SECRET_ACCESS_KEY'] = '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'
  ENV['S3_BUCKET'] = 'siddhant-data-analytics-bucket'
end
