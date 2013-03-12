module Capybara
  module Polyglot
    module Drivers
      module Webkit

        include Default

        def confirm
          page.driver.accept_js_confirms!
        end

        def submit(selector)
          page.driver.browser.execute_script("$('#{selector}').submit()")
        end

        def debug_session
          file_name = "#{Time.now.to_i}_#{example.description}.png".downcase.gsub(/\s+/,"_")
          page.save_screenshot "tmp/screenshot_#{file_name}.png"
        end

      end
    end
  end
end
