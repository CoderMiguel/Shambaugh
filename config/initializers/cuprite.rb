require "capybara/cuprite"

Capybara.javascript_driver = :cuprite
Capybara.server = :puma, { Silent: true }
Capybara.default_driver = :cuprite
Capybara.register_driver(:cuprite) do |app|
  Capybara::Cuprite::Driver.new(app,
                                browser_options: { 'no-sandbox': nil },
                                headless: Rails.env.development?,
                                inspector: true,
                                js_errors: true,
                                window_size: [1200, 800]
  )
end
