require 'capybara'
require 'headless'

RSpec.configure do |config|
  config.include Capybara::DSL
end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
  config.app_host = 'http://finance.i.ua'
end

Headless.new(display: 100, reuse: false, destroy_at_exit: true).start
