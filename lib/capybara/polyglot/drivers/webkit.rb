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
          page.driver.render "tmp/screenshot.png"
        end

      end
    end
  end
end
