module Capybara
  module Polyglot
    module Drivers
      module Selenium

        def click_hidden(selector)
          page.execute_script("$('#{selector}').trigger('mouseenter');")
          page.execute_script("$('#{selector}').click();")
        end

        def confirm(sleep_time = 1)
          page.driver.browser.switch_to.alert.accept
          sleep sleep_time
        end

      end
    end
  end
end
