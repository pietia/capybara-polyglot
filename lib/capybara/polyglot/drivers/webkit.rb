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
          stamp = Time.now.to_i
          page.driver.render "tmp/screenshot-#{stamp}.png"
        end

      end
    end
  end
end
