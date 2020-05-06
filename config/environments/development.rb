# frozen_string_literal: true

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

  # Enable caching.
  config.cache_store = :memory_store
  config.public_file_server.headers = {
    'Cache-Control' => "public, max-age=#{2.hour.to_i}"
  }

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Raises error for missing translations.
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker

  # Allow ngrok access.
  # ngrok assigns random hexadecimal names to the HTTP tunnels.
  # `\h` is ruby's hexadecimal shorthand to equivalent [0-9a-fA-F]
  # see https://docs.ruby-lang.org/ja/latest/doc/spec=2fregexp.html#string
  config.hosts << /\h+.ngrok.io/
end
